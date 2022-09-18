# Perennial Paradigm CTF
The [Paradigm CTF 2022](https://ctf.paradigm.xyz/) challenges bundled together in one repository with wrappers around the client and server for easy local playing.

Local client and/or server support is available for the following EVM challenges:
- ELECTRIC-SHEEP
- HINT-FINANCE
- JUST-IN-TIME
- LOCKBOX2
- MERKLEDROP
- RANDOM
- RESCUE
- SOURCECODE
- STEALING-SATS
- TRAPDOOOR
- TRAPDOOOOR
- VANITY

Huge shoutout to all of the folks who contributed to Paradigm CTF 2022 in some way shape or form 🫡. Inspiration for this repo was also drawn from [Damn Vulnerable Defi Foundry](https://github.com/nicolasgarcia214/damn-vulnerable-defi-foundry) and [Paradigm CTF Setup](https://github.com/zobront/paradigm-ctf).

## Installation
1. Install the latest version of [Foundry](https://book.getfoundry.sh/getting-started/installation)
2. Upgrade to the latest version of pip `pip install --upgrade pip`
3. Clone the repository `git clone`
4. Run the installation script to create virtualenv and install requirements to it `cd perennial-paradigm && ./install.sh`

## How To Play EVM Challenges

1. Activate the virtual environment `source pctf-env/bin/activate`
2. Review the challenge contracts in the `src/` directory
3. Launch the server in a separate shell session `./server.sh`
4. Run the client for a challenge and launch an instance `./client.sh [CHALLENGE_NAME]`
5. Copy the private key and RPC endpoint to the `.env`
5. Code your solutions (and the setup contract address) in the provided script file `test/Eth/[CHALLENGE_NAME]/Exploit[CHALLENGE].s.sol`
6. Create the exploit transaction `./exploit.sh [CHALLENGE_NAME]`
7. Run the client and get the flag `./client.sh [CHALLENGE_NAME]`