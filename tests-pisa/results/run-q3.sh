#!/bin/bash
# run-sim-outorder.sh
#
# runs sim-outorder with a particular configuration file

export MYCONFIG=Q3
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
./sim-outorder -config configQ3.cfg \
	-ptrace Q3-anagram.trc 0:1024 \
	-redir:sim sim_config_Q3-anagram.out \
	../bin.little/anagram ../inputs/words < ../inputs/input.txt \
	> Q3-anagram.out
echo "sim-outorder for $MYCONFIG, $MYTEST complete @ $(date)"

echo
export MYTEST="go.ss"
echo "Running sim-outorder for $MYCONFIG, $MYTEST @ $(date)"
./sim-outorder -config configQ3.cfg \
	-ptrace Q3-go.ss.trc 0:1024 \
	-redir:sim sim_config_$MYCONFIG-$MYTEST.out \
	../bin.little/go.ss 2 8 < ../inputs/null.in \
	> Q3-go.ss.out
echo "sim-outorder for $MYCONFIG, $MYTEST complete @ $(date)"
echo

echo
export MYTEST="perl.ss"
echo "Running sim-outorder for $MYCONFIG, $MYTEST @ $(date)"
./sim-outorder -config configQ3.cfg \
	-ptrace Q3-perl.ss.trc 0:1024 \
	-redir:sim sim_config_$MYCONFIG-$MYTEST.out \
	../bin.little/perl.ss ../inputs/primes.pl < ../inputs/primes.in \
   	> Q3-primes.out
echo "sim-outorder for $MYCONFIG, $MYTEST complete @ $(date)"
echo
cp ./*.{cfg,trc,out} ../../../project1/results/$(date +"%Y%m%d")/

