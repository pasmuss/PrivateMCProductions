#!/bin/bash

mySeed=$1
nEvts=$2
globalTag=$3
JobName=38T_peak_${nEvts}_evts_seed_$mySeed

echo  "Job started at " `date`

CMSSW_DIR=$4
LXBATCH_DIR=$PWD

cd ${CMSSW_DIR}
eval `scramv1 runtime -sh`
cd $LXBATCH_DIR

cp ${CMSSW_DIR}/Cosmics_38T_peak_10_4_0-GT103X_upgrade2018cosmics_realistic_peak_v1.py .
echo "cmsRun ${CMSSW_DIR}/Cosmics_38T_peak_10_4_0-GT103X_upgrade2018cosmics_realistic_peak_v1.py"

cmsRun Cosmics_38T_peak_10_4_0-GT103X_upgrade2018cosmics_realistic_peak_v1.py myseed=${mySeed} maxEvents=${nEvts} >& ${JobName}.out

echo "Content of working directory is: " `ls -lrt`

eos mkdir -p /eos/cms/store/group/alca_trackeralign/$USER/test_out/Cosmics2018MCProd/

for payloadOutput in $(ls *root ); do xrdcp -f $payloadOutput root://eoscms.cern.ch//eos/cms/store/group/alca_trackeralign/$USER/test_out/Cosmics2018MCProd/step1_UndergroundCosmicSPLooseMu_peak_38T_${globalTag}_${nEvts}_evts_seed_${mySeed}.root ; done

mv ${JobName}.out ${CMSSW_DIR}/outfiles
mv ${JobName}.err ${CMSSW_DIR}/outfiles
mv ${JobName}.log ${CMSSW_DIR}/outfiles

echo  "Job ended at " `date`

exit 0