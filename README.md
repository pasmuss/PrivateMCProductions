# PrivateMCProductions

```
cmsrel CMSSW_10_2_0
cd CMSSW_10_2_0/src
git clone git@github.com:mmusich/PrivateMCProductions.git
cd PrivateMCProductions/TkAlCosmics0T/
mkdir outfiles
# edit the lsf file to copy somewhere else than my eos :)
./sumbitAllSeed.sh
```

this will create 250M events (250 jobs for 1M cosmics events each)
