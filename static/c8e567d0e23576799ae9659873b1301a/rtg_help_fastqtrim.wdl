version 1.0

task RtgHelpFastqtrim {
  input {
    File inputInput
    File outputOutput
    String qualityQualityFormat
    Boolean discardDiscardEmptyReads
    Int endEndQualityThreshold
    Int minMinReadLength
    Int startStartQualityThreshold
    Int trimTrimEndBases
    Int trimTrimStartBases
    Boolean noNoGzip
    Boolean reverseReverseComplement
    Int seedSeed
    Float subsampleSubsample
    Int threadsThreads
  }
  command <<<
    rtg help fastqtrim \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(qualityQualityFormat) then ("--quality-format " +  '"' + qualityQualityFormat + '"') else ""} \
      ~{true="--discard-empty-reads" false="" discardDiscardEmptyReads} \
      ~{if defined(endEndQualityThreshold) then ("--end-quality-threshold " +  '"' + endEndQualityThreshold + '"') else ""} \
      ~{if defined(minMinReadLength) then ("--min-read-length " +  '"' + minMinReadLength + '"') else ""} \
      ~{if defined(startStartQualityThreshold) then ("--start-quality-threshold " +  '"' + startStartQualityThreshold + '"') else ""} \
      ~{if defined(trimTrimEndBases) then ("--trim-end-bases " +  '"' + trimTrimEndBases + '"') else ""} \
      ~{if defined(trimTrimStartBases) then ("--trim-start-bases " +  '"' + trimTrimStartBases + '"') else ""} \
      ~{true="--no-gzip" false="" noNoGzip} \
      ~{true="--reverse-complement" false="" reverseReverseComplement} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(subsampleSubsample) then ("--subsample " +  '"' + subsampleSubsample + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}