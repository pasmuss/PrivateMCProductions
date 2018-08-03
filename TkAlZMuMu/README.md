# PrivateMCProductions

```
cmsrel CMSSW_10_2_0
cd CMSSW_10_2_0/src
git clone git@github.com:mmusich/PrivateMCProductions.git
cd PrivateMCProductions/TkAlZMuMu/
mkdir outfiles
# edit the lsf file to copy somewhere else than my eos :)
./sumbitAllSeed.sh
```

this will create 2.5M events (250 jobs for 10k Z->mu,mu events each)
