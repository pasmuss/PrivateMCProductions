#!/bin/bash

eval `scramv1 runtime -sh`
CMSSW_DIR=${CMSSW_BASE}/src/PrivateMCProductions/TkAlCosmics0T

if [ -d $CMSSW_DIR/outfiles ]; then
    echo "$CMSSW_DIR/outfiles already exists, skipping"
else
    mkdir $CMSSW_DIR/outfiles
fi

condor_submit par1=100000 par2=103X_upgrade2018cosmics_realistic_deco_v7 submit.sub par3=${CMSSW_DIR}

