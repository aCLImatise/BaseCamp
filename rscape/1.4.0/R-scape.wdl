version 1.0

task RScape {
  input {
    String eE
    Boolean sS
    Boolean structuredStructured
    Boolean sampleSampleContacts
    Boolean sampleSampleBp
    Boolean sampleSampleWc
    Boolean foldFold
    String outdirOutdir
    String outOutName
    Boolean r2rR2rAll
    Boolean vV
    String windowWindow
    String slideSlide
    Boolean oneOneMsa
    Boolean noNoFigures
    Boolean rocRoc
    String fF
    String iI
    String iI
    String tTStart
    String tendTend
    Boolean consensusConsensus
    String subSubMsa
    String nNSeqMin
    String gapGapThresh
    String miniMiniD
    String maxMaxId
    String treeTreeFile
    Boolean vVShuffle
    Boolean cCShuffle
    String cntCntMaxd
    String pdbPdbFile
    String cntCntMind
    Boolean onlyOnlyPdb
    String inInFormat
    String nNShuffle
    Boolean chiaChia
    Boolean chipChip
    Boolean chiChi
    Boolean gtaGta
    Boolean gtpGtp
    Boolean gtGt
    Boolean miaMia
    Boolean mipMip
    Boolean miMi
    Boolean miraMira
    Boolean mirMirP
    Boolean mirMir
    Boolean migaMiga
    Boolean miMiGp
    Boolean migMig
    Boolean oOMesa
    Boolean omOmEsp
    Boolean omesOmes
    Boolean rafaRafa
    Boolean rRAfp
    Boolean rafRaf
    Boolean rafRafSa
    Boolean rafRafSp
    Boolean rafRafS
    Boolean ccfaCcfa
    Boolean ccfpCcfp
    Boolean ccfCcf
    Boolean ptfPtfP
    Boolean pPTap
    Boolean ptPtDp
    Boolean c16C16
    Boolean c2C2
    Boolean cCSelect
    Boolean naiveNaive
    Boolean nullNullPhylo
    Boolean nonNonParam
    Boolean pottsPotts
    Boolean dnaDna
    Boolean rnaRna
    Boolean aminoAmino
    String ptPtMuh
    String ptPtMue
    Boolean plmPlm
    Boolean aAPlm
    Boolean outOutPotts
    Boolean gremlinGremlin
    Boolean outOutMsa
    Boolean outOutTree
    Boolean outOutNull
    Boolean allAllBranch
    Boolean vVOutput
    String powerPower
    Boolean doubleDoubleSubs
    String minhMinhLoop
    String toToL
    String seedSeed
    String pmPmAss
    String? rnaRna
    String? structuralStructural
    String? covariationCovariation
    String? aboveAbove
    String? phylogeneticPhylogenetic
    String? expectationExpectation
    String? msaMsaFile
  }
  command <<<
    R-scape \
      ~{rnaRna} \
      ~{if defined(eE) then ("-E " +  '"' + eE + '"') else ""} \
      ~{true="-s" false="" sS} \
      ~{true="--structured" false="" structuredStructured} \
      ~{true="--samplecontacts" false="" sampleSampleContacts} \
      ~{true="--samplebp" false="" sampleSampleBp} \
      ~{true="--samplewc" false="" sampleSampleWc} \
      ~{true="--fold" false="" foldFold} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(outOutName) then ("--outname " +  '"' + outOutName + '"') else ""} \
      ~{true="--r2rall" false="" r2rR2rAll} \
      ~{true="-v" false="" vV} \
      ~{if defined(windowWindow) then ("--window " +  '"' + windowWindow + '"') else ""} \
      ~{if defined(slideSlide) then ("--slide " +  '"' + slideSlide + '"') else ""} \
      ~{true="--onemsa" false="" oneOneMsa} \
      ~{true="--nofigures" false="" noNoFigures} \
      ~{true="--roc" false="" rocRoc} \
      ~{if defined(fF) then ("-F " +  '"' + fF + '"') else ""} \
      ~{if defined(iI) then ("-I " +  '"' + iI + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(tTStart) then ("--tstart " +  '"' + tTStart + '"') else ""} \
      ~{if defined(tendTend) then ("--tend " +  '"' + tendTend + '"') else ""} \
      ~{true="--consensus" false="" consensusConsensus} \
      ~{if defined(subSubMsa) then ("--submsa " +  '"' + subSubMsa + '"') else ""} \
      ~{if defined(nNSeqMin) then ("--nseqmin " +  '"' + nNSeqMin + '"') else ""} \
      ~{if defined(gapGapThresh) then ("--gapthresh " +  '"' + gapGapThresh + '"') else ""} \
      ~{if defined(miniMiniD) then ("--minid " +  '"' + miniMiniD + '"') else ""} \
      ~{if defined(maxMaxId) then ("--maxid " +  '"' + maxMaxId + '"') else ""} \
      ~{if defined(treeTreeFile) then ("--treefile " +  '"' + treeTreeFile + '"') else ""} \
      ~{true="--vshuffle" false="" vVShuffle} \
      ~{true="--cshuffle" false="" cCShuffle} \
      ~{if defined(cntCntMaxd) then ("--cntmaxD " +  '"' + cntCntMaxd + '"') else ""} \
      ~{if defined(pdbPdbFile) then ("--pdbfile " +  '"' + pdbPdbFile + '"') else ""} \
      ~{if defined(cntCntMind) then ("--cntmind " +  '"' + cntCntMind + '"') else ""} \
      ~{true="--onlypdb" false="" onlyOnlyPdb} \
      ~{if defined(inInFormat) then ("--informat " +  '"' + inInFormat + '"') else ""} \
      ~{if defined(nNShuffle) then ("--nshuffle " +  '"' + nNShuffle + '"') else ""} \
      ~{true="--CHIa" false="" chiaChia} \
      ~{true="--CHIp" false="" chipChip} \
      ~{true="--CHI" false="" chiChi} \
      ~{true="--GTa" false="" gtaGta} \
      ~{true="--GTp" false="" gtpGtp} \
      ~{true="--GT" false="" gtGt} \
      ~{true="--MIa" false="" miaMia} \
      ~{true="--MIp" false="" mipMip} \
      ~{true="--MI" false="" miMi} \
      ~{true="--MIra" false="" miraMira} \
      ~{true="--MIrp" false="" mirMirP} \
      ~{true="--MIr" false="" mirMir} \
      ~{true="--MIga" false="" migaMiga} \
      ~{true="--MIgp" false="" miMiGp} \
      ~{true="--MIg" false="" migMig} \
      ~{true="--OMESa" false="" oOMesa} \
      ~{true="--OMESp" false="" omOmEsp} \
      ~{true="--OMES" false="" omesOmes} \
      ~{true="--RAFa" false="" rafaRafa} \
      ~{true="--RAFp" false="" rRAfp} \
      ~{true="--RAF" false="" rafRaf} \
      ~{true="--RAFSa" false="" rafRafSa} \
      ~{true="--RAFSp" false="" rafRafSp} \
      ~{true="--RAFS" false="" rafRafS} \
      ~{true="--CCFa" false="" ccfaCcfa} \
      ~{true="--CCFp" false="" ccfpCcfp} \
      ~{true="--CCF" false="" ccfCcf} \
      ~{true="--PTFp" false="" ptfPtfP} \
      ~{true="--PTAp" false="" pPTap} \
      ~{true="--PTDp" false="" ptPtDp} \
      ~{true="--C16" false="" c16C16} \
      ~{true="--C2" false="" c2C2} \
      ~{true="--CSELECT" false="" cCSelect} \
      ~{true="--naive" false="" naiveNaive} \
      ~{true="--nullphylo" false="" nullNullPhylo} \
      ~{true="--nonparam" false="" nonNonParam} \
      ~{true="--potts" false="" pottsPotts} \
      ~{true="--dna" false="" dnaDna} \
      ~{true="--rna" false="" rnaRna} \
      ~{true="--amino" false="" aminoAmino} \
      ~{if defined(ptPtMuh) then ("--ptmuh " +  '"' + ptPtMuh + '"') else ""} \
      ~{if defined(ptPtMue) then ("--ptmue " +  '"' + ptPtMue + '"') else ""} \
      ~{true="--PLM" false="" plmPlm} \
      ~{true="--APLM" false="" aAPlm} \
      ~{true="--outpotts" false="" outOutPotts} \
      ~{true="--gremlin" false="" gremlinGremlin} \
      ~{true="--outmsa" false="" outOutMsa} \
      ~{true="--outtree" false="" outOutTree} \
      ~{true="--outnull" false="" outOutNull} \
      ~{true="--allbranch" false="" allAllBranch} \
      ~{true="--voutput" false="" vVOutput} \
      ~{if defined(powerPower) then ("--power " +  '"' + powerPower + '"') else ""} \
      ~{true="--doublesubs" false="" doubleDoubleSubs} \
      ~{if defined(minhMinhLoop) then ("--minhloop " +  '"' + minhMinhLoop + '"') else ""} \
      ~{if defined(toToL) then ("--tol " +  '"' + toToL + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(pmPmAss) then ("--pmass " +  '"' + pmPmAss + '"') else ""} \
      ~{structuralStructural} \
      ~{covariationCovariation} \
      ~{aboveAbove} \
      ~{phylogeneticPhylogenetic} \
      ~{expectationExpectation} \
      ~{msaMsaFile}
  >>>
}