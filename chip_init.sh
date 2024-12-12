#!/bin/bash
echo ===========================================================================
echo BEGIN FILE: chip_init.sh
echo -e "===========================================================================\n"

# initialize the chip for 'mips' using the latest version
description="MIPS SoC Development Project"
ipg chip init --chip mips --version 1.0.0 --internal-name internal-soc-mips --description "$description"
ipg chip wiki create mips --title Overview --description "$description" --content OVERVIEW.md

# audits by tags
#branches=(
#    "v1.0.0"
#    "main2"
#)

#for branch in "${branches[@]}"; do
#    # cd back into the chip directory
#    cd $CHIP_DIR
#    echo "  NEW CWD: $(pwd)"
#
#    # checkout into the branch
#    echo "  RUNNING: checkout into branch '$branch'"
#    git checkout $branch
#
#    # initialize and run the audit for the branch
#    echo "  RUNNING: initialize audit for branch '$branch'"
#    ipg audit init pass-$branch
#
#    # run the audit for the branch
#    ipg audit run --audit pass-$branch --quiet
#
#    # show results
#    echo "  RUNNING: show audit results for chip 'soc-riscv' in branch '$branch'"
#    ipg audit results --chip soc-riscv --audit pass-$branch --format json | \
#	jq -c '.data.results.release_audits[] | [.ip, .file_count == .match_count + .missing_count + .modified_count]'
#
#done

# modify one of the known IP 
#echo "blah blah" >> tmu2/rtl/tmu2_dpram.v

#ipg audit init pass-main3 --find-modified
#ipg audit run pass-main3 --results --quiet

# modify another of the IP
#rm ac97/rtl/ac97_deframer.v ac97/rtl/ac97_dma.v ac97/rtl/ac97_framer.v

#ipg audit init pass-main4 --find-modified
#ipg audit run pass-main4 --results --quiet
