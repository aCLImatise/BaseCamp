version 1.0

task Rnabloom {
  input {
    File leftLeft
    File rightRight
    File poolPool
    File longLong
    File refRef
    Boolean revRevCompLeft
    Boolean revRevCompRight
    Boolean revRevCompLong
    Boolean strandedStranded
    String nameName
    String prefixPrefix
    Boolean uracilUracil
    Int threadsThreads
    File outdirOutdir
    Boolean forceForce
    Int kmKmEr
    Int stageStage
    Int qualQualDbg
    Int qualQualFrag
    Int minMinCov
    Int hashHash
    Int sbfSbfHash
    Int dbgDbgBfHash
    Int cbfCbfHash
    Int pkbPkbFHash
    Int numNumKmErs
    Boolean ntNtCard
    Float memoryMemory
    Float sbfSbfMem
    Float dbgDbgBfMem
    Float cbfCbfMem
    Float pkbPkbFMem
    Float fprFpr
    Boolean saveSaveBf
    Int tipTipLength
    Int lookLookAhead
    Int sampleSample
    Int errErrCorrItR
    Float maxMaxCovGrad
    Int inInDel
    Float percentPercent
    Int lengthLength
    Boolean norrNorr
    Boolean mergeMergePool
    Int overlapOverlap
    Int boundBound
    Boolean extendExtend
    Boolean noNoFc
    Boolean sensitiveSensitive
    Boolean artifactArtifact
    Boolean chimeraChimera
    Boolean stratumStratum
    Int pairPair
    Int polyaPolya
    String mmMmOpt
    Boolean debugDebug
    Boolean hpcHpc
    Int minimizerMinimizer
    Int minimizerMinimizerWindow
    Float sketchSketchOverlapProportion
    Int sketchSketchOverlapNumber
  }
  command <<<
    rnabloom \
      ~{if defined(leftLeft) then ("--left " +  '"' + leftLeft + '"') else ""} \
      ~{if defined(rightRight) then ("--right " +  '"' + rightRight + '"') else ""} \
      ~{if defined(poolPool) then ("--pool " +  '"' + poolPool + '"') else ""} \
      ~{if defined(longLong) then ("-long " +  '"' + longLong + '"') else ""} \
      ~{if defined(refRef) then ("-ref " +  '"' + refRef + '"') else ""} \
      ~{true="--revcomp-left" false="" revRevCompLeft} \
      ~{true="--revcomp-right" false="" revRevCompRight} \
      ~{true="--revcomp-long" false="" revRevCompLong} \
      ~{true="--stranded" false="" strandedStranded} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{if defined(prefixPrefix) then ("-prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{true="--uracil" false="" uracilUracil} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{true="--force" false="" forceForce} \
      ~{if defined(kmKmEr) then ("--kmer " +  '"' + kmKmEr + '"') else ""} \
      ~{if defined(stageStage) then ("-stage " +  '"' + stageStage + '"') else ""} \
      ~{if defined(qualQualDbg) then ("--qual-dbg " +  '"' + qualQualDbg + '"') else ""} \
      ~{if defined(qualQualFrag) then ("--qual-frag " +  '"' + qualQualFrag + '"') else ""} \
      ~{if defined(minMinCov) then ("--mincov " +  '"' + minMinCov + '"') else ""} \
      ~{if defined(hashHash) then ("-hash " +  '"' + hashHash + '"') else ""} \
      ~{if defined(sbfSbfHash) then ("--sbf-hash " +  '"' + sbfSbfHash + '"') else ""} \
      ~{if defined(dbgDbgBfHash) then ("--dbgbf-hash " +  '"' + dbgDbgBfHash + '"') else ""} \
      ~{if defined(cbfCbfHash) then ("--cbf-hash " +  '"' + cbfCbfHash + '"') else ""} \
      ~{if defined(pkbPkbFHash) then ("--pkbf-hash " +  '"' + pkbPkbFHash + '"') else ""} \
      ~{if defined(numNumKmErs) then ("--num-kmers " +  '"' + numNumKmErs + '"') else ""} \
      ~{true="-ntcard" false="" ntNtCard} \
      ~{if defined(memoryMemory) then ("--memory " +  '"' + memoryMemory + '"') else ""} \
      ~{if defined(sbfSbfMem) then ("--sbf-mem " +  '"' + sbfSbfMem + '"') else ""} \
      ~{if defined(dbgDbgBfMem) then ("--dbgbf-mem " +  '"' + dbgDbgBfMem + '"') else ""} \
      ~{if defined(cbfCbfMem) then ("--cbf-mem " +  '"' + cbfCbfMem + '"') else ""} \
      ~{if defined(pkbPkbFMem) then ("--pkbf-mem " +  '"' + pkbPkbFMem + '"') else ""} \
      ~{if defined(fprFpr) then ("--fpr " +  '"' + fprFpr + '"') else ""} \
      ~{true="-savebf" false="" saveSaveBf} \
      ~{if defined(tipTipLength) then ("-tiplength " +  '"' + tipTipLength + '"') else ""} \
      ~{if defined(lookLookAhead) then ("-lookahead " +  '"' + lookLookAhead + '"') else ""} \
      ~{if defined(sampleSample) then ("-sample " +  '"' + sampleSample + '"') else ""} \
      ~{if defined(errErrCorrItR) then ("--errcorritr " +  '"' + errErrCorrItR + '"') else ""} \
      ~{if defined(maxMaxCovGrad) then ("--maxcovgrad " +  '"' + maxMaxCovGrad + '"') else ""} \
      ~{if defined(inInDel) then ("-indel " +  '"' + inInDel + '"') else ""} \
      ~{if defined(percentPercent) then ("--percent " +  '"' + percentPercent + '"') else ""} \
      ~{if defined(lengthLength) then ("-length " +  '"' + lengthLength + '"') else ""} \
      ~{true="-norr" false="" norrNorr} \
      ~{true="-mergepool" false="" mergeMergePool} \
      ~{if defined(overlapOverlap) then ("-overlap " +  '"' + overlapOverlap + '"') else ""} \
      ~{if defined(boundBound) then ("-bound " +  '"' + boundBound + '"') else ""} \
      ~{true="-extend" false="" extendExtend} \
      ~{true="-nofc" false="" noNoFc} \
      ~{true="-sensitive" false="" sensitiveSensitive} \
      ~{true="-artifact" false="" artifactArtifact} \
      ~{true="-chimera" false="" chimeraChimera} \
      ~{true="-stratum" false="" stratumStratum} \
      ~{if defined(pairPair) then ("-pair " +  '"' + pairPair + '"') else ""} \
      ~{if defined(polyaPolya) then ("--polya " +  '"' + polyaPolya + '"') else ""} \
      ~{if defined(mmMmOpt) then ("-mmopt " +  '"' + mmMmOpt + '"') else ""} \
      ~{true="-debug" false="" debugDebug} \
      ~{true="-hpc" false="" hpcHpc} \
      ~{if defined(minimizerMinimizer) then ("--minimizer " +  '"' + minimizerMinimizer + '"') else ""} \
      ~{if defined(minimizerMinimizerWindow) then ("--minimizer-window " +  '"' + minimizerMinimizerWindow + '"') else ""} \
      ~{if defined(sketchSketchOverlapProportion) then ("--sketch-overlap-proportion " +  '"' + sketchSketchOverlapProportion + '"') else ""} \
      ~{if defined(sketchSketchOverlapNumber) then ("--sketch-overlap-number " +  '"' + sketchSketchOverlapNumber + '"') else ""}
  >>>
}