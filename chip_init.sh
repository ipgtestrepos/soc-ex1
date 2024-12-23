#!/bin/bash
echo ===========================================================================
echo BEGIN FILE: chip_init.sh
echo -e "===========================================================================\n"

# cleanup 
rm -rf .ipg

# initialize the chip for 'mips' using the latest version
description="MIPS SoC Development Project"
ipg chip init --chip mips --version 1.0.0 --internal-name internal-soc-mips --description "$description"
ipg chip wiki create mips --title Overview --description "$description" --content OVERVIEW.md

ipg audit init baseline --find-modified
ipg audit run baseline
ipg audit results baseline

