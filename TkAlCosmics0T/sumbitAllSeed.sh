#!/bin/bash

CMSSW_DIR=${CMSSW_BASE}/src/PrivateMCProductions/TkAlCosmics0T
cd $CMSSW_DIR

for i in {0..250}; do   
    echo "------ submitting job with seed = $i"
    bsub -o tmp.tmp -q cmscaf1nd UndergroundCosmicSPLooseMu_cfi_py_GEN_SIM_DIGI_L1_DIGI2RAW_RAW2DIGI_L1Reco_RECO_ALCA_Templ.lsf $i 1000000 102X_upgrade2018cosmics_realistic_deco_v8
done

