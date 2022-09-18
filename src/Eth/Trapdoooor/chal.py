import binascii
import os
import subprocess
import tempfile
import json
import requests
import sys
sys.path.insert(1, 'images/eth-challenge-base')
import eth_sandbox
from Crypto.Util import number

os.environ["FLAG"] = "PCTF{placeholder_placeholder_placeholder_placeholder}"
FLAG = os.getenv("FLAG")
FORGE = subprocess.check_output(['which', 'forge']).decode('utf-8').strip()

def new_factorize_action():
    def action() -> int:
        ticket = eth_sandbox.Ticket(challenge_id="challenge", team_id="team")

        if ticket.challenge_id != eth_sandbox.CHALLENGE_ID:
            print("invalid ticket!")
            return 1

        runtime_code = input("runtime bytecode: ")

        try:
            binascii.unhexlify(runtime_code)
        except:
            print("runtime code is not hex!")
            return 1

        with tempfile.TemporaryDirectory() as tempdir:
            with open("src/Eth/Trapdoooor/Script.sol", "r") as f:
                script = f.read()

            a = number.getPrime(128)
            b = number.getPrime(128)
            script = script.replace("NUMBER", str(a * b)).replace("CODE", runtime_code)

            with open(f"{tempdir}/Script.sol", "w") as f:
                f.write(script)

            p = subprocess.Popen(
                args=[
                    FORGE,
                    "script",
                    "Script.sol",
                    "--tc",
                    "Script",
                ],
                cwd=tempdir,
                stdout=subprocess.PIPE,
                stderr=subprocess.PIPE,
                env={},
            )


            if p.wait() != 0:
                print("failed to run script")
                return 1

            result = p.stdout.read().decode("utf8").strip().split("\n")[-1].strip()

            print(result)
            if result.startswith("you factored the number!"):
                print(FLAG)

    return eth_sandbox.Action(name="factorize", handler=action)


eth_sandbox.run_launcher([
    new_factorize_action(),
])
