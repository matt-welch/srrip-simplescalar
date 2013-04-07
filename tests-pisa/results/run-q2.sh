#!/bin/bash
# run-q2.sh
# 
#
# For Question 2: runs sim-outorder with a particular configuration file

export MYCONFIG=Q2

export MYTEST="test-math"
echo "Running sim-outorder for $MYCONFIG, $MYTEST @ $(date)"
./sim-outorder -config config$MYCONFIG.cfg \
	-ptrace $MYCONFIG-$MYTEST.trc 0:1024 \
	-redir:sim sim_config_$MYCONFIG.out \
	../bin.little/$MYTEST > $MYCONFIG-$MYTEST.out
echo "sim-outorder for $MYCONFIG, $MYTEST complete @ $(date)"
echo

export MYTEST="anagram"  
echo "Running sim-outorder for $MYCONFIG, $MYTEST @ $(date)"
./sim-outorder -config configQ2.cfg \
	-ptrace Q2-anagram.trc 0:1024 \
	-redir:sim sim_config_Q2-anagram.out \
	../bin.little/anagram ../inputs/words < ../inputs/input.txt \
	> Q2-anagram.out
echo "sim-outorder for $MYCONFIG, $MYTEST complete @ $(date)"

echo
export MYTEST="go.ss"
echo "Running sim-outorder for $MYCONFIG, $MYTEST @ $(date)"
./sim-outorder -config configQ2.cfg \
	-ptrace Q2-go.ss.trc 0:1024 \
	-redir:sim sim_config_$MYCONFIG-$MYTEST.out \
	../bin.little/go.ss 2 8 < ../inputs/null.in \
	> Q2-go.ss.out
echo "sim-outorder for $MYCONFIG, $MYTEST complete @ $(date)"
echo
cp ./*.{cfg,trc,out} ../../../project1/results/$(date +"%Y%m%d")/
