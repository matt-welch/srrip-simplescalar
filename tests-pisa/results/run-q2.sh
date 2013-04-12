#!/bin/bash
# run-q2.sh
# 
#
# For Question 2: runs sim-outorder with a particular configuration file

MYCONFIG="Q2"

CPOLICY="l"

MYTEST="test-math"
echo "Running sim-cache for, $MYTEST, Policy=$CPOLICY @ $(date)"
./sim-cache \
	-cache:il1 il1:256:64:1:$CPOLICY \
	-cache:il2 il2:512:64:2:$CPOLICY \
	-cache:dl1 dl1:512:64:512:$CPOLICY \
	-cache:dl2 dl2:1024:64:2:$CPOLICY \
	-redir:sim $MYCONFIG-$MYTEST.stats.out \
	../bin.little/$MYTEST > $MYCONFIG-$MYTEST.out
grep $MYCONFIG-$MYTEST.stats.out -e "total number of instructions executed" -e "total number of loads and stores executed" -e "il1.misses" -e "il2.misses" -e "dl1.misses" -e "dl2.misses" --color=auto
echo "sim-cache for  $MYTEST complete @ $(date)"
echo

MYTEST="anagram"
echo "Running sim-cache for, $MYTEST, Policy=$CPOLICY @ $(date)"
./sim-cache \
	-cache:il1 il1:256:64:1:$CPOLICY \
	-cache:il2 il2:512:64:2:$CPOLICY \
	-cache:dl1 dl1:512:64:512:$CPOLICY \
	-cache:dl2 dl2:1024:64:2:$CPOLICY \
	-redir:sim $MYCONFIG-$MYTEST.stats.out \
	../bin.little/$MYTEST ../inputs/words < \
	../inputs/input.txt \
	> $MYCONFIG-$MYTEST.out
grep $MYCONFIG-$MYTEST.stats.out -e "total number of instructions executed" -e "total number of loads and stores executed" -e "il1.misses" -e "il2.misses"  -e "dl1.misses" -e "dl2.misses" --color=auto
echo "sim-cache for  $MYTEST complete @ $(date)"
echo

MYTEST="go.ss"
echo "Running sim-cache for, $MYTEST, Policy=$CPOLICY  @ $(date)"
./sim-cache \
	-cache:il1 il1:256:64:1:$CPOLICY \
	-cache:il2 il2:512:64:2:$CPOLICY \
	-cache:dl1 dl1:512:64:512:$CPOLICY \
	-cache:dl2 dl2:1024:64:2:$CPOLICY \
	-redir:sim $MYCONFIG-$MYTEST.stats.out \
	../bin.little/$MYTEST 2 8 < ../inputs/null.in \
	> $MYCONFIG-$MYTEST.out
grep $MYCONFIG-$MYTEST.stats.out -e "total number of instructions executed" -e "total number of loads and stores executed" -e "il1.misses" -e "il2.misses"  -e "dl1.misses" -e "dl2.misses" --color=auto
echo "sim-cache for  $MYTEST complete @ $(date)"
echo

CPOLICY="f"

MYTEST="test-math"
echo "Running sim-cache for, $MYTEST, Policy=$CPOLICY @ $(date)"
./sim-cache \
	-cache:il1 il1:256:64:1:$CPOLICY \
	-cache:il2 il2:512:64:2:$CPOLICY \
	-cache:dl1 dl1:512:64:512:$CPOLICY \
	-cache:dl2 dl2:1024:64:2:$CPOLICY \
	-redir:sim $MYCONFIG-$MYTEST.stats.out \
	../bin.little/$MYTEST > $MYCONFIG-$MYTEST.out
grep $MYCONFIG-$MYTEST.stats.out -e "total number of instructions executed" -e "total number of loads and stores executed" -e "il1.misses" -e "il2.misses" -e "dl1.misses" -e "dl2.misses" --color=auto
echo "sim-cache for  $MYTEST complete @ $(date)"
echo

MYTEST="anagram"
echo "Running sim-cache for, $MYTEST, Policy=$CPOLICY @ $(date)"
./sim-cache \
	-cache:il1 il1:256:64:1:$CPOLICY \
	-cache:il2 il2:512:64:2:$CPOLICY \
	-cache:dl1 dl1:512:64:512:$CPOLICY \
	-cache:dl2 dl2:1024:64:2:$CPOLICY \
	-redir:sim $MYCONFIG-$MYTEST.stats.out \
	../bin.little/$MYTEST ../inputs/words < \
	../inputs/input.txt \
	> $MYCONFIG-$MYTEST.out
grep $MYCONFIG-$MYTEST.stats.out -e "total number of instructions executed" -e "total number of loads and stores executed" -e "il1.misses" -e "il2.misses"  -e "dl1.misses" -e "dl2.misses" --color=auto
echo "sim-cache for  $MYTEST complete @ $(date)"
echo

MYTEST="go.ss"
echo "Running sim-cache for, $MYTEST, Policy=$CPOLICY  @ $(date)"
./sim-cache \
	-cache:il1 il1:256:64:1:$CPOLICY \
	-cache:il2 il2:512:64:2:$CPOLICY \
	-cache:dl1 dl1:512:64:512:$CPOLICY \
	-cache:dl2 dl2:1024:64:2:$CPOLICY \
	-redir:sim $MYCONFIG-$MYTEST.stats.out \
	../bin.little/$MYTEST 2 8 < ../inputs/null.in \
	> $MYCONFIG-$MYTEST.out
grep $MYCONFIG-$MYTEST.stats.out -e "total number of instructions executed" -e "total number of loads and stores executed" -e "il1.misses" -e "il2.misses"  -e "dl1.misses" -e "dl2.misses" --color=auto
echo "sim-cache for  $MYTEST complete @ $(date)"
echo


CPOLICY="s"

MYTEST="test-math"
echo "Running sim-cache for, $MYTEST, Policy=$CPOLICY @ $(date)"
./sim-cache \
	-cache:il1 il1:256:64:1:$CPOLICY \
	-cache:il2 il2:512:64:2:$CPOLICY \
	-cache:dl1 dl1:512:64:512:$CPOLICY \
	-cache:dl2 dl2:1024:64:2:$CPOLICY \
	-redir:sim $MYCONFIG-$MYTEST.stats.out \
	../bin.little/$MYTEST > $MYCONFIG-$MYTEST.out
grep $MYCONFIG-$MYTEST.stats.out -e "total number of instructions executed" -e "total number of loads and stores executed" -e "il1.misses" -e "il2.misses" -e "dl1.misses" -e "dl2.misses" --color=auto
echo "sim-cache for  $MYTEST complete @ $(date)"
echo

MYTEST="anagram"
echo "Running sim-cache for, $MYTEST, Policy=$CPOLICY @ $(date)"
./sim-cache \
	-cache:il1 il1:256:64:1:$CPOLICY \
	-cache:il2 il2:512:64:2:$CPOLICY \
	-cache:dl1 dl1:512:64:512:$CPOLICY \
	-cache:dl2 dl2:1024:64:2:$CPOLICY \
	-redir:sim $MYCONFIG-$MYTEST.stats.out \
	../bin.little/$MYTEST ../inputs/words < \
	../inputs/input.txt \
	> $MYCONFIG-$MYTEST.out
grep $MYCONFIG-$MYTEST.stats.out -e "total number of instructions executed" -e "total number of loads and stores executed" -e "il1.misses" -e "il2.misses"  -e "dl1.misses" -e "dl2.misses" --color=auto
echo "sim-cache for  $MYTEST complete @ $(date)"
echo

MYTEST="go.ss"
echo "Running sim-cache for, $MYTEST, Policy=$CPOLICY  @ $(date)"
./sim-cache \
	-cache:il1 il1:256:64:1:$CPOLICY \
	-cache:il2 il2:512:64:2:$CPOLICY \
	-cache:dl1 dl1:512:64:512:$CPOLICY \
	-cache:dl2 dl2:1024:64:2:$CPOLICY \
	-redir:sim $MYCONFIG-$MYTEST.stats.out \
	../bin.little/$MYTEST 2 8 < ../inputs/null.in \
	> $MYCONFIG-$MYTEST.out
grep $MYCONFIG-$MYTEST.stats.out -e "total number of instructions executed" -e "total number of loads and stores executed" -e "il1.misses" -e "il2.misses"  -e "dl1.misses" -e "dl2.misses" --color=auto
echo "sim-cache for  $MYTEST complete @ $(date)"
echo

#cp ./*.{cfg,trc,out} ../../../project1/results/$(date +"%Y%m%d")/
