#!/usr/bin/env bash

case $1 in

  Electric-Sheep | Electric-sheep | electric-sheep | ElectricSheep | Electricsheep | electricSheep | electricsheep)
    python3 src/Eth/Electric-sheep/chal.py
    ;;

  Hint-Finance | Hint-finance | hint-finance | HintFinance | Hintfinance | hintFinance | hintfinance)
    python3 src/Eth/Hint-finance/chal.py
    ;;

  Just-In-Time | Just-in-time | just-in-time | JustInTime | Justintime | justInTime | justintime)
    python3 src/Eth/Just-in-time/chal.py
    ;;

  Lockbox2 | lockbox2)
    python3 src/Eth/Lockbox2/chal.py
    ;;

  Merkledrop | merkledrop)
    python3 src/Eth/Merkledrop/chal.py
    ;;

  Random | random)
    python3 src/Eth/Random/chal.py
    ;;

  Rescue | rescue)
    python3 src/Eth/Rescue/chal.py
    ;;

  Sourcecode | sourcecode)
    python3 src/Eth/Sourcecode/chal.py
    ;;

  Stealing-Sats | Stealing-sats | stealing-sats | StealingSats | Stealingsats | stealingSats | stealingsats)
    python3 src/Eth/Stealing-sats/chal.py
    ;;

  Trapdoooor | trapdoooor | trapd4r)
    python3 src/Eth/Trapdoooor/chal.py
    ;;

  Trapdooor | trapdooor | trapd3r)
    python3 src/Eth/Trapdooor/chal.py
    ;;

  Vanity | vanity)
    python3 src/Eth/Vanity/chal.py
    ;;

  *)
    echo "Usage: ./client.sh [Challenge]"
    ;;
esac
