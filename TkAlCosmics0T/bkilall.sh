#!/bin/bash

for ijob in `bjobs | grep v8 | grep -v JOBID | awk '{print $1}'`
do
    #echo ${ijob}
    bkill ${ijob}
done