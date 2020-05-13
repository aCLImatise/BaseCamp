version 1.0

task TOBIASATACorrect {
  input {
    String bamBam
    String genomeGenome
    String peaksPeaks
    String regionsRegionsIn
    String regionsRegionsOut
    String blacklistBlacklist
    Int extendExtend
    Boolean splitSplitStrands
    Boolean normNormOff
    Boolean trackTrackOff
    Int kKFlank
    Int readReadShift
    Int bgBgShift
    Int windowWindow
    String scoreScoreMat
    String prefixPrefix
    Directory outdirOutdir
    Int coresCores
    Int splitSplit
    Int verbosityVerbosity
  }
  command <<<
    TOBIAS ATACorrect \
      ~{if defined(bamBam) then ("--bam " +  '"' + bamBam + '"') else ""} \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""} \
      ~{if defined(peaksPeaks) then ("--peaks " +  '"' + peaksPeaks + '"') else ""} \
      ~{if defined(regionsRegionsIn) then ("--regions-in " +  '"' + regionsRegionsIn + '"') else ""} \
      ~{if defined(regionsRegionsOut) then ("--regions-out " +  '"' + regionsRegionsOut + '"') else ""} \
      ~{if defined(blacklistBlacklist) then ("--blacklist " +  '"' + blacklistBlacklist + '"') else ""} \
      ~{if defined(extendExtend) then ("--extend " +  '"' + extendExtend + '"') else ""} \
      ~{true="--split-strands" false="" splitSplitStrands} \
      ~{true="--norm-off" false="" normNormOff} \
      ~{true="--track-off" false="" trackTrackOff} \
      ~{if defined(kKFlank) then ("--k_flank " +  '"' + kKFlank + '"') else ""} \
      ~{if defined(readReadShift) then ("--read_shift " +  '"' + readReadShift + '"') else ""} \
      ~{if defined(bgBgShift) then ("--bg_shift " +  '"' + bgBgShift + '"') else ""} \
      ~{if defined(windowWindow) then ("--window " +  '"' + windowWindow + '"') else ""} \
      ~{if defined(scoreScoreMat) then ("--score_mat " +  '"' + scoreScoreMat + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(coresCores) then ("--cores " +  '"' + coresCores + '"') else ""} \
      ~{if defined(splitSplit) then ("--split " +  '"' + splitSplit + '"') else ""} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""}
  >>>
}