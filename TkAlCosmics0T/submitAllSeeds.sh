#!/bin/bash

eval `scramv1 runtime -sh`
CMSSW_DIR=${CMSSW_BASE}/src/PrivateMCProductions/TkAlCosmics0T

if [ -d $CMSSW_DIR/outfiles ]; then
    echo "$CMSSW_DIR/outfiles already exists, skipping"
else
    mkdir $CMSSW_DIR/outfiles
fi

for i in {0..250}; do   
    echo "------ submitting job with seed = $i"
    condor_submit par1=${i} par2=1000000 par3=102X_upgrade2018cosmics_realistic_deco_v8 submit.sub par4=${CMSSW_DIR}
done

