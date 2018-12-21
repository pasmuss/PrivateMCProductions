#!/bin/bash

CMSSW_DIR=${CMSSW_BASE}/src/PrivateMCProductions/TkAlMuonIsolated
cd $CMSSW_DIR

mkdir $CMSSW_DIR/outfiles

for i in {1..10}; do   
    echo "------ submitting job with seed = $i"
    bsub -o tmp.tmp -q cmscaf1nd WM_13TeV_TuneCUETP8M1_cfi_GEN_SIM_DIGI_L1_DIGI2RAW_RAW2DIGI_L1Reco_RECO_ALCA_Templ.lsf $i 10 102X_upgrade2018_realistic_v10
done

