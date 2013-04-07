#!/bin/bash
# run-sim-outprder.sh
#
# runs sim-outorder with a particular configuration file

if [[ -z "$1" ]]; then
	export MYCONFIG=Q1
else
	export MYCONFIG=$1
fi

echo "Running sim-outorder for $MYCONFIG @ $(date)"
./sim-outorder -config config$MYCONFIG.cfg \
	-ptrace config$MYCONFIG.trc 0:1024 \
	-redir:sim sim_config_$MYCONFIG.out \
	../bin.little/test-math > test-math-$MYCONFIG.out
echo "sim-outorder run complete @ $(date)"


cp ./*.{cfg,trc,out} ../../../project1/results/$(date +"%Y%m%d")/
