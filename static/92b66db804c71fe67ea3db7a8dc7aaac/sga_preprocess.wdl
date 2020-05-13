version 1.0

task SgaPreprocess {
  input {
    Boolean verboseVerbose
    Boolean seedSeed
    File outOut
    Int pePeMode
    File pePeOrphans
    Boolean phred64Phred64
    Boolean discardDiscardQuality
    Int qualityQualityTrim
    Int qualityQualityFilter
    Int minMinLength
    Int hardHardClip
    Boolean permutePermuteAmbiguous
    Float sampleSample
    Boolean dustDust
    Float dustDustThreshold
    String suffixSuffix
    String removeRemoveAdapterRev
  }
  command <<<
    sga preprocess \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--seed" false="" seedSeed} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(pePeMode) then ("--pe-mode " +  '"' + pePeMode + '"') else ""} \
      ~{if defined(pePeOrphans) then ("--pe-orphans " +  '"' + pePeOrphans + '"') else ""} \
      ~{true="--phred64" false="" phred64Phred64} \
      ~{true="--discard-quality" false="" discardDiscardQuality} \
      ~{if defined(qualityQualityTrim) then ("--quality-trim " +  '"' + qualityQualityTrim + '"') else ""} \
      ~{if defined(qualityQualityFilter) then ("--quality-filter " +  '"' + qualityQualityFilter + '"') else ""} \
      ~{if defined(minMinLength) then ("--min-length " +  '"' + minMinLength + '"') else ""} \
      ~{if defined(hardHardClip) then ("--hard-clip " +  '"' + hardHardClip + '"') else ""} \
      ~{true="--permute-ambiguous" false="" permutePermuteAmbiguous} \
      ~{if defined(sampleSample) then ("--sample " +  '"' + sampleSample + '"') else ""} \
      ~{true="--dust" false="" dustDust} \
      ~{if defined(dustDustThreshold) then ("--dust-threshold " +  '"' + dustDustThreshold + '"') else ""} \
      ~{if defined(suffixSuffix) then ("--suffix " +  '"' + suffixSuffix + '"') else ""} \
      ~{if defined(removeRemoveAdapterRev) then ("--remove-adapter-rev " +  '"' + removeRemoveAdapterRev + '"') else ""}
  >>>
}