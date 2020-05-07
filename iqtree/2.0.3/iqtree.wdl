version 1.0

task Iqtree {
  input {
    File sS
    String sS
    String seqtypeSeqtype
    File tT
    String oO
    String prefixPrefix
    String seedSeed
    Boolean safeSafe
    String memMem
    String runsRuns
    Boolean redoRedo
    Boolean verboseVerbose
    Boolean quietQuiet
    String fFConst
    String epsilonEpsilon
    String tT
    String threadsThreadsMax
    File pP
    File qQ
    File qQ
    File sS
    String subsampleSubsample
    String subsampleSubsampleSeed
    String lLMap
    File lmcLmcLust
    Boolean quartetQuartetLh
    String ninNinIt
    String ntopNtop
    String nNBest
    String nN
    String nNStop
    String perturbPerturb
    String radiusRadius
    Boolean allAllNni
    File gG
    Boolean fastFast
    Boolean polyPolyToMy
    Boolean treeTreeFix
    Boolean tTReels
    Boolean showShowLh
    Boolean terraceTerrace
    String ufUfBoot
    String ufUfJack
    String jackJackProp
    String samplingSampling
    Boolean bootBootTrees
    Boolean wbtWbtL
    String nmaxNmax
    String nstepNstep
    String bcBcOr
    String beBePs
    Boolean bnnBnnI
    String bootBoot
    String jackJack
    String jackJackProp
    String bcBcOn
    String bBOnly
    Boolean tTBe
    String alrtAlrt
    Boolean alrtAlrt
    Boolean aABayes
    String lbpLbp
    String mM
    String mM
    String mM
    String mM
    Boolean mM
    Boolean mM
    Boolean mM
    Boolean mM
    Boolean mM
    String mMSet
    String mMSet
    String msubMsub
    String mMFreq
    String mMRate
    String cmCmIn
    String cmaxCmax
    String meritMerit
    Boolean mtreeMtree
    Boolean mMRedo
    String maddMadd
    File mMDef
    Boolean modeloModeloMatic
    Boolean mergeMerge
    String mergeMerge
    Boolean mergeMergeModel
    String mergeMergeModel
    Boolean mergeMergeRate
    String mergeMergeRate
    String rRCluster
    String rRClusterF
    String rRClusterMax
    Boolean mM
    Boolean mM
    Boolean mM
    Boolean mM
    Boolean mM
    Boolean mM
    Boolean mM
    Boolean mM
    Boolean mM
    Boolean mM
    Boolean mM
    Boolean mM
    Boolean mM
    Boolean mM
    Boolean mM
    Boolean mM
    Boolean mM
    Boolean mM
    Boolean mM
    String alphaAlphaMin
    Boolean gammaGammaMedian
    Boolean rateRate
    Boolean mlMlRate
    File sS
    Boolean mM
    Boolean mM
    Boolean mM
    Boolean mM
    Boolean mM
    Boolean mM
    Boolean mM
    Boolean mM
    Boolean mixMixOpt
    Boolean mM
    File treeTreeFreq
    File siteSiteFreq
    Boolean freqFreqMax
    File treesTrees
    String testTest
    Boolean testTestWeight
    Boolean testTestAu
    Boolean siteSiteLh
    Boolean ancestralAncestral
    String asrAsrMin
    Boolean symSymTest
    Boolean symSymTestOnly
    Boolean symSymTestRemoveBad
    Boolean symSymTestRemoveGood
    String symSymTestType
    String symSymTestPval
    Boolean symSymTestKeepZero
    File tT
    File gcfGcf
    Boolean dfDfTree
    String scfScf
    File sS
    File pP
    Boolean cfCfVerbose
    File tT
    String supSupMin
    String burninBurnin
    Boolean conConTree
    Boolean conConNet
    File supportSupport
    String supSupTag
    Boolean treeTreeDistAll
    File treeTreeDist
    File treeTreeDist2
    String rR
    String randRand
    String rlenRlen
    Boolean keepKeepIdent
    String cpCpTime
    Boolean blBlFix
    Boolean blBlScale
    Boolean blmBlmIn
    Boolean blBlMax
    Boolean wWSlr
    Boolean wWSlm
    Boolean wslWslMr
    Boolean wWSpr
    Boolean wsWsPm
    Boolean wspWspMr
    Boolean partPartLh
    Boolean noNoOutFiles
    Boolean eigenEigenLib
    Boolean alnAlnInfo
  }
  command <<<
    iqtree \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(seqtypeSeqtype) then ("--seqtype " +  '"' + seqtypeSeqtype + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{true="--safe" false="" safeSafe} \
      ~{if defined(memMem) then ("--mem " +  '"' + memMem + '"') else ""} \
      ~{if defined(runsRuns) then ("--runs " +  '"' + runsRuns + '"') else ""} \
      ~{true="--redo" false="" redoRedo} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(fFConst) then ("-fconst " +  '"' + fFConst + '"') else ""} \
      ~{if defined(epsilonEpsilon) then ("--epsilon " +  '"' + epsilonEpsilon + '"') else ""} \
      ~{if defined(tT) then ("-T " +  '"' + tT + '"') else ""} \
      ~{if defined(threadsThreadsMax) then ("--threads-max " +  '"' + threadsThreadsMax + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(qQ) then ("-q " +  '"' + qQ + '"') else ""} \
      ~{if defined(qQ) then ("-Q " +  '"' + qQ + '"') else ""} \
      ~{if defined(sS) then ("-S " +  '"' + sS + '"') else ""} \
      ~{if defined(subsampleSubsample) then ("--subsample " +  '"' + subsampleSubsample + '"') else ""} \
      ~{if defined(subsampleSubsampleSeed) then ("--subsample-seed " +  '"' + subsampleSubsampleSeed + '"') else ""} \
      ~{if defined(lLMap) then ("--lmap " +  '"' + lLMap + '"') else ""} \
      ~{if defined(lmcLmcLust) then ("--lmclust " +  '"' + lmcLmcLust + '"') else ""} \
      ~{true="--quartetlh" false="" quartetQuartetLh} \
      ~{if defined(ninNinIt) then ("--ninit " +  '"' + ninNinIt + '"') else ""} \
      ~{if defined(ntopNtop) then ("--ntop " +  '"' + ntopNtop + '"') else ""} \
      ~{if defined(nNBest) then ("--nbest " +  '"' + nNBest + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(nNStop) then ("--nstop " +  '"' + nNStop + '"') else ""} \
      ~{if defined(perturbPerturb) then ("--perturb " +  '"' + perturbPerturb + '"') else ""} \
      ~{if defined(radiusRadius) then ("--radius " +  '"' + radiusRadius + '"') else ""} \
      ~{true="--allnni" false="" allAllNni} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{true="--fast" false="" fastFast} \
      ~{true="--polytomy" false="" polyPolyToMy} \
      ~{true="--tree-fix" false="" treeTreeFix} \
      ~{true="--treels" false="" tTReels} \
      ~{true="--show-lh" false="" showShowLh} \
      ~{true="--terrace" false="" terraceTerrace} \
      ~{if defined(ufUfBoot) then ("--ufboot " +  '"' + ufUfBoot + '"') else ""} \
      ~{if defined(ufUfJack) then ("--ufjack " +  '"' + ufUfJack + '"') else ""} \
      ~{if defined(jackJackProp) then ("--jack-prop " +  '"' + jackJackProp + '"') else ""} \
      ~{if defined(samplingSampling) then ("--sampling " +  '"' + samplingSampling + '"') else ""} \
      ~{true="--boot-trees" false="" bootBootTrees} \
      ~{true="--wbtl" false="" wbtWbtL} \
      ~{if defined(nmaxNmax) then ("--nmax " +  '"' + nmaxNmax + '"') else ""} \
      ~{if defined(nstepNstep) then ("--nstep " +  '"' + nstepNstep + '"') else ""} \
      ~{if defined(bcBcOr) then ("--bcor " +  '"' + bcBcOr + '"') else ""} \
      ~{if defined(beBePs) then ("--beps " +  '"' + beBePs + '"') else ""} \
      ~{true="--bnni" false="" bnnBnnI} \
      ~{if defined(bootBoot) then ("--boot " +  '"' + bootBoot + '"') else ""} \
      ~{if defined(jackJack) then ("--jack " +  '"' + jackJack + '"') else ""} \
      ~{if defined(jackJackProp) then ("--jack-prop " +  '"' + jackJackProp + '"') else ""} \
      ~{if defined(bcBcOn) then ("--bcon " +  '"' + bcBcOn + '"') else ""} \
      ~{if defined(bBOnly) then ("--bonly " +  '"' + bBOnly + '"') else ""} \
      ~{true="--tbe" false="" tTBe} \
      ~{if defined(alrtAlrt) then ("--alrt " +  '"' + alrtAlrt + '"') else ""} \
      ~{true="--alrt" false="" alrtAlrt} \
      ~{true="--abayes" false="" aABayes} \
      ~{if defined(lbpLbp) then ("--lbp " +  '"' + lbpLbp + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{true="-m" false="" mM} \
      ~{true="-m" false="" mM} \
      ~{true="-m" false="" mM} \
      ~{true="-m" false="" mM} \
      ~{true="-m" false="" mM} \
      ~{if defined(mMSet) then ("--mset " +  '"' + mMSet + '"') else ""} \
      ~{if defined(mMSet) then ("--mset " +  '"' + mMSet + '"') else ""} \
      ~{if defined(msubMsub) then ("--msub " +  '"' + msubMsub + '"') else ""} \
      ~{if defined(mMFreq) then ("--mfreq " +  '"' + mMFreq + '"') else ""} \
      ~{if defined(mMRate) then ("--mrate " +  '"' + mMRate + '"') else ""} \
      ~{if defined(cmCmIn) then ("--cmin " +  '"' + cmCmIn + '"') else ""} \
      ~{if defined(cmaxCmax) then ("--cmax " +  '"' + cmaxCmax + '"') else ""} \
      ~{if defined(meritMerit) then ("--merit " +  '"' + meritMerit + '"') else ""} \
      ~{true="--mtree" false="" mtreeMtree} \
      ~{true="--mredo" false="" mMRedo} \
      ~{if defined(maddMadd) then ("--madd " +  '"' + maddMadd + '"') else ""} \
      ~{if defined(mMDef) then ("--mdef " +  '"' + mMDef + '"') else ""} \
      ~{true="--modelomatic" false="" modeloModeloMatic} \
      ~{true="--merge" false="" mergeMerge} \
      ~{if defined(mergeMerge) then ("--merge " +  '"' + mergeMerge + '"') else ""} \
      ~{true="--merge-model" false="" mergeMergeModel} \
      ~{if defined(mergeMergeModel) then ("--merge-model " +  '"' + mergeMergeModel + '"') else ""} \
      ~{true="--merge-rate" false="" mergeMergeRate} \
      ~{if defined(mergeMergeRate) then ("--merge-rate " +  '"' + mergeMergeRate + '"') else ""} \
      ~{if defined(rRCluster) then ("--rcluster " +  '"' + rRCluster + '"') else ""} \
      ~{if defined(rRClusterF) then ("--rclusterf " +  '"' + rRClusterF + '"') else ""} \
      ~{if defined(rRClusterMax) then ("--rcluster-max " +  '"' + rRClusterMax + '"') else ""} \
      ~{true="-m" false="" mM} \
      ~{true="-m" false="" mM} \
      ~{true="-m" false="" mM} \
      ~{true="-m" false="" mM} \
      ~{true="-m" false="" mM} \
      ~{true="-m" false="" mM} \
      ~{true="-m" false="" mM} \
      ~{true="-m" false="" mM} \
      ~{true="-m" false="" mM} \
      ~{true="-m" false="" mM} \
      ~{true="-m" false="" mM} \
      ~{true="-m" false="" mM} \
      ~{true="-m" false="" mM} \
      ~{true="-m" false="" mM} \
      ~{true="-m" false="" mM} \
      ~{true="-m" false="" mM} \
      ~{true="-m" false="" mM} \
      ~{true="-m" false="" mM} \
      ~{true="-m" false="" mM} \
      ~{if defined(alphaAlphaMin) then ("--alpha-min " +  '"' + alphaAlphaMin + '"') else ""} \
      ~{true="--gamma-median" false="" gammaGammaMedian} \
      ~{true="--rate" false="" rateRate} \
      ~{true="--mlrate" false="" mlMlRate} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{true="-m" false="" mM} \
      ~{true="-m" false="" mM} \
      ~{true="-m" false="" mM} \
      ~{true="-m" false="" mM} \
      ~{true="-m" false="" mM} \
      ~{true="-m" false="" mM} \
      ~{true="-m" false="" mM} \
      ~{true="-m" false="" mM} \
      ~{true="--mix-opt" false="" mixMixOpt} \
      ~{true="-m" false="" mM} \
      ~{if defined(treeTreeFreq) then ("--tree-freq " +  '"' + treeTreeFreq + '"') else ""} \
      ~{if defined(siteSiteFreq) then ("--site-freq " +  '"' + siteSiteFreq + '"') else ""} \
      ~{true="--freq-max" false="" freqFreqMax} \
      ~{if defined(treesTrees) then ("--trees " +  '"' + treesTrees + '"') else ""} \
      ~{if defined(testTest) then ("--test " +  '"' + testTest + '"') else ""} \
      ~{true="--test-weight" false="" testTestWeight} \
      ~{true="--test-au" false="" testTestAu} \
      ~{true="--sitelh" false="" siteSiteLh} \
      ~{true="--ancestral" false="" ancestralAncestral} \
      ~{if defined(asrAsrMin) then ("--asr-min " +  '"' + asrAsrMin + '"') else ""} \
      ~{true="--symtest" false="" symSymTest} \
      ~{true="--symtest-only" false="" symSymTestOnly} \
      ~{true="--symtest-remove-bad" false="" symSymTestRemoveBad} \
      ~{true="--symtest-remove-good" false="" symSymTestRemoveGood} \
      ~{if defined(symSymTestType) then ("--symtest-type " +  '"' + symSymTestType + '"') else ""} \
      ~{if defined(symSymTestPval) then ("--symtest-pval " +  '"' + symSymTestPval + '"') else ""} \
      ~{true="--symtest-keep-zero" false="" symSymTestKeepZero} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(gcfGcf) then ("--gcf " +  '"' + gcfGcf + '"') else ""} \
      ~{true="--df-tree" false="" dfDfTree} \
      ~{if defined(scfScf) then ("--scf " +  '"' + scfScf + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{true="--cf-verbose" false="" cfCfVerbose} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(supSupMin) then ("--sup-min " +  '"' + supSupMin + '"') else ""} \
      ~{if defined(burninBurnin) then ("--burnin " +  '"' + burninBurnin + '"') else ""} \
      ~{true="--con-tree" false="" conConTree} \
      ~{true="--con-net" false="" conConNet} \
      ~{if defined(supportSupport) then ("--support " +  '"' + supportSupport + '"') else ""} \
      ~{if defined(supSupTag) then ("--suptag " +  '"' + supSupTag + '"') else ""} \
      ~{true="--tree-dist-all" false="" treeTreeDistAll} \
      ~{if defined(treeTreeDist) then ("--tree-dist " +  '"' + treeTreeDist + '"') else ""} \
      ~{if defined(treeTreeDist2) then ("--tree-dist2 " +  '"' + treeTreeDist2 + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(randRand) then ("--rand " +  '"' + randRand + '"') else ""} \
      ~{if defined(rlenRlen) then ("--rlen " +  '"' + rlenRlen + '"') else ""} \
      ~{true="--keep-ident" false="" keepKeepIdent} \
      ~{if defined(cpCpTime) then ("--cptime " +  '"' + cpCpTime + '"') else ""} \
      ~{true="-blfix" false="" blBlFix} \
      ~{true="-blscale" false="" blBlScale} \
      ~{true="-blmin" false="" blmBlmIn} \
      ~{true="-blmax" false="" blBlMax} \
      ~{true="-wslr" false="" wWSlr} \
      ~{true="-wslm" false="" wWSlm} \
      ~{true="-wslmr" false="" wslWslMr} \
      ~{true="-wspr" false="" wWSpr} \
      ~{true="-wspm" false="" wsWsPm} \
      ~{true="-wspmr" false="" wspWspMr} \
      ~{true="--partlh" false="" partPartLh} \
      ~{true="--no-outfiles" false="" noNoOutFiles} \
      ~{true="--eigenlib" false="" eigenEigenLib} \
      ~{true="-alninfo" false="" alnAlnInfo}
  >>>
}