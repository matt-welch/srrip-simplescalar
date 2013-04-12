#!/bin/bash
# run-q3.sh
#
# For question 3: runs sim-cache with a particular configuration file

# ./sim-cache -cache:dl1 dl1:1024:32:1024:s -redir:sim junk.out ../bin.little/test-math > garbage.out

# Icache: L1_16K_1way__L2_32K_2way
# Dcache: L1_32K_full__L2_64K_2way
# cache replacement: I:LRU, D:FIFO
MYCONFIG="Q3"
MYTEST="test-math"
echo "Running sim-cache for, $MYTEST @ $(date)"
./sim-cache \
	-cache:il1 il1:256:64:1:l \
	-cache:il2 il2:512:64:2:l \
	-cache:dl1 dl1:512:64:512:f \
	-cache:dl2 dl2:1024:64:2:f \
	-redir:sim $MYCONFIG-$MYTEST.stats.out \
	../bin.little/$MYTEST > $MYCONFIG-$MYTEST.out
grep $MYCONFIG-$MYTEST.stats.out -e "total number of instructions executed" -e "total number of loads and stores executed" -e "il1.misses" -e "il2.misses" -e "dl1.misses" -e "dl2.misses" --color=auto
echo "sim-cache for  $MYTEST complete @ $(date)"
echo

MYTEST="anagram"
echo "Running sim-cache for, $MYTEST @ $(date)"
./sim-cache \
	-cache:il1 il1:256:64:1:l \
	-cache:il2 il2:512:64:2:l \
	-cache:dl1 dl1:512:64:512:f \
	-cache:dl2 dl2:1024:64:2:f \
	-redir:sim $MYCONFIG-$MYTEST.stats.out \
	../bin.little/$MYTEST ../inputs/words < \
	../inputs/input.txt \
	> $MYCONFIG-$MYTEST.out
grep $MYCONFIG-$MYTEST.stats.out -e "total number of instructions executed" -e "total number of loads and stores executed" -e "il1.misses" -e "il2.misses"  -e "dl1.misses" -e "dl2.misses" --color=auto
echo "sim-cache for  $MYTEST complete @ $(date)"
echo

MYTEST="go.ss"
echo "Running sim-cache for, $MYTEST @ $(date)"
./sim-cache \
	-cache:il1 il1:256:64:1:l \
	-cache:il2 il2:512:64:2:l \
	-cache:dl1 dl1:512:64:512:f \
	-cache:dl2 dl2:1024:64:2:f \
	-redir:sim $MYCONFIG-$MYTEST.stats.out \
	../bin.little/$MYTEST 2 8 < ../inputs/null.in \
	> $MYCONFIG-$MYTEST.out
grep $MYCONFIG-$MYTEST.stats.out -e "total number of instructions executed" -e "total number of loads and stores executed" -e "il1.misses" -e "il2.misses"  -e "dl1.misses" -e "dl2.misses" --color=auto
echo "sim-cache for  $MYTEST complete @ $(date)"
echo

MYTEST="perl.ss"
echo "Running sim-cache for, $MYTEST @ $(date)"
./sim-cache \
	-cache:il1 il1:256:64:1:l \
	-cache:il2 il2:512:64:2:l \
	-cache:dl1 dl1:512:64:512:f \
	-cache:dl2 dl2:1024:64:2:f \
	-redir:sim $MYCONFIG-$MYTEST.stats.out \
	../bin.little/$MYTEST ../inputs/primes.pl \
   	< ../inputs/primes.in \
	> $MYCONFIG-$MYTEST.out
grep $MYCONFIG-$MYTEST.stats.out -e "total number of instructions executed" -e "total number of loads and stores executed" -e "il1.misses" -e "il2.misses"  -e "dl1.misses" -e "dl2.misses" --color=auto
echo "sim-cache for  $MYTEST complete @ $(date)"
echo

#cp ./*.{cfg,trc,out} ../../../project1/results/$(date +"%Y%m%d")/
#
