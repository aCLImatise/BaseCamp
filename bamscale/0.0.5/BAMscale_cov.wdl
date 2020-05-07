version 1.0

task BAMscaleCov {
  input {
    File bedBed
    File bamBam
    String libLibType
    String fragFrag
    String strandStrand
    String rRStrand
    Int seqSeqCov
    File blacklistBlacklist
    Int bedBedSubtract
    Int mapqMapq
    String keepKeepDup
    String noNoProper
    String unmapUnmapPair
    Int minMinFrag
    Int maxMaxFrag
    String fragFragFilt
    String diffDiffChr
    String outdirOutdir
    String prefixPrefix
    Int threadsThreads
  }
  command <<<
    BAMscale cov \
      ~{if defined(bedBed) then ("--bed " +  '"' + bedBed + '"') else ""} \
      ~{if defined(bamBam) then ("--bam " +  '"' + bamBam + '"') else ""} \
      ~{if defined(libLibType) then ("--libtype " +  '"' + libLibType + '"') else ""} \
      ~{if defined(fragFrag) then ("--frag " +  '"' + fragFrag + '"') else ""} \
      ~{if defined(strandStrand) then ("--strand " +  '"' + strandStrand + '"') else ""} \
      ~{if defined(rRStrand) then ("--rstrand " +  '"' + rRStrand + '"') else ""} \
      ~{if defined(seqSeqCov) then ("--seqcov " +  '"' + seqSeqCov + '"') else ""} \
      ~{if defined(blacklistBlacklist) then ("--blacklist " +  '"' + blacklistBlacklist + '"') else ""} \
      ~{if defined(bedBedSubtract) then ("--bedsubtract " +  '"' + bedBedSubtract + '"') else ""} \
      ~{if defined(mapqMapq) then ("--mapq " +  '"' + mapqMapq + '"') else ""} \
      ~{if defined(keepKeepDup) then ("--keepdup " +  '"' + keepKeepDup + '"') else ""} \
      ~{if defined(noNoProper) then ("--noproper " +  '"' + noNoProper + '"') else ""} \
      ~{if defined(unmapUnmapPair) then ("--unmappair " +  '"' + unmapUnmapPair + '"') else ""} \
      ~{if defined(minMinFrag) then ("--minfrag " +  '"' + minMinFrag + '"') else ""} \
      ~{if defined(maxMaxFrag) then ("--maxfrag " +  '"' + maxMaxFrag + '"') else ""} \
      ~{if defined(fragFragFilt) then ("--fragfilt " +  '"' + fragFragFilt + '"') else ""} \
      ~{if defined(diffDiffChr) then ("--diffchr " +  '"' + diffDiffChr + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}