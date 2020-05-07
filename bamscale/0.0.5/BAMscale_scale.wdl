version 1.0

task BAMscaleScale {
  input {
    File bamBam
    String libLibType
    String fragFrag
    Int fragFragSize
    String normNormType
    String scaleScale
    Float factorFactor
    String operationOperation
    String sS
    Int binsizeBinsize
    Int seqSeqCov
    File blacklistBlacklist
    Int bedBedSubtract
    Int smoothenSmoothen
    Int trackTrackSmooth
    Int mapqMapq
    String keepKeepDup
    String noNoProper
    String unmapUnmapPair
    Int minMinFrag
    Int maxMaxFrag
    String fragFragFilt
    String diffDiffChr
    String outdirOutdir
    Int threadsThreads
  }
  command <<<
    BAMscale scale \
      ~{if defined(bamBam) then ("--bam " +  '"' + bamBam + '"') else ""} \
      ~{if defined(libLibType) then ("--libtype " +  '"' + libLibType + '"') else ""} \
      ~{if defined(fragFrag) then ("--frag " +  '"' + fragFrag + '"') else ""} \
      ~{if defined(fragFragSize) then ("--fragsize " +  '"' + fragFragSize + '"') else ""} \
      ~{if defined(normNormType) then ("--normtype " +  '"' + normNormType + '"') else ""} \
      ~{if defined(scaleScale) then ("--scale " +  '"' + scaleScale + '"') else ""} \
      ~{if defined(factorFactor) then ("--factor " +  '"' + factorFactor + '"') else ""} \
      ~{if defined(operationOperation) then ("--operation " +  '"' + operationOperation + '"') else ""} \
      ~{if defined(sS) then ("-S " +  '"' + sS + '"') else ""} \
      ~{if defined(binsizeBinsize) then ("--binsize " +  '"' + binsizeBinsize + '"') else ""} \
      ~{if defined(seqSeqCov) then ("--seqcov " +  '"' + seqSeqCov + '"') else ""} \
      ~{if defined(blacklistBlacklist) then ("--blacklist " +  '"' + blacklistBlacklist + '"') else ""} \
      ~{if defined(bedBedSubtract) then ("--bedsubtract " +  '"' + bedBedSubtract + '"') else ""} \
      ~{if defined(smoothenSmoothen) then ("--smoothen " +  '"' + smoothenSmoothen + '"') else ""} \
      ~{if defined(trackTrackSmooth) then ("--tracksmooth " +  '"' + trackTrackSmooth + '"') else ""} \
      ~{if defined(mapqMapq) then ("--mapq " +  '"' + mapqMapq + '"') else ""} \
      ~{if defined(keepKeepDup) then ("--keepdup " +  '"' + keepKeepDup + '"') else ""} \
      ~{if defined(noNoProper) then ("--noproper " +  '"' + noNoProper + '"') else ""} \
      ~{if defined(unmapUnmapPair) then ("--unmappair " +  '"' + unmapUnmapPair + '"') else ""} \
      ~{if defined(minMinFrag) then ("--minfrag " +  '"' + minMinFrag + '"') else ""} \
      ~{if defined(maxMaxFrag) then ("--maxfrag " +  '"' + maxMaxFrag + '"') else ""} \
      ~{if defined(fragFragFilt) then ("--fragfilt " +  '"' + fragFragFilt + '"') else ""} \
      ~{if defined(diffDiffChr) then ("--diffchr " +  '"' + diffDiffChr + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}