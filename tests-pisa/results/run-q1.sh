#!/bin/bash
# run-q1.sh
#
# For question 1, runs sim-outorder with a particular configuration file

export MYCONFIG=Q1a

export MYTEST="test-math"

echo "Running sim-outorder for $MYCONFIG @ $(date)"
./sim-outorder -config config$MYCONFIG.cfg \
	-ptrace $MYCONFIG-$MYTEST.trc 0:1024 \
	-redir:sim sim_config_$MYCONFIG.out \
	../bin.little/$MYTEST > $MYCONFIG-$MYTEST.out

echo "Run of $MYCONFIG sim-outorder complete @ $(date)"

echo
export MYCONFIG=Q1b
echo "Running sim-outorder for $MYCONFIG @ $(date)"
./sim-outorder -config config$MYCONFIG.cfg \
	-ptrace $MYCONFIG-$MYTEST.trc 0:1024 \
	-redir:sim sim_config_$MYCONFIG.out \
	../bin.little/$MYTEST > $MYCONFIG-$MYTEST.out

echo "Run of $MYCONFIG sim-outorder complete @ $(date)"

cp ./*.{cfg,trc,out} ../../../project1/results/$(date +"%Y%m%d")/
