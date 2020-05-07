version 1.0

task SambambaView {
  input {
    Boolean headerHeader
    Boolean referenceReferenceInfo
    File regionsRegions
    Boolean countCount
    Boolean validValid
    Boolean samSamInput
    Boolean cramCramInput
    String refRefFilename
    Boolean showShowProgress
    Boolean compressionCompressionLevel
    Boolean outputOutputFilename
    String nNThreads
    String subsampleSubsample
    String subsamplingSubsamplingSeed
  }
  command <<<
    sambamba view \
      ~{true="--header" false="" headerHeader} \
      ~{true="--reference-info" false="" referenceReferenceInfo} \
      ~{if defined(regionsRegions) then ("--regions " +  '"' + regionsRegions + '"') else ""} \
      ~{true="--count" false="" countCount} \
      ~{true="--valid" false="" validValid} \
      ~{true="--sam-input" false="" samSamInput} \
      ~{true="--cram-input" false="" cramCramInput} \
      ~{if defined(refRefFilename) then ("--ref-filename " +  '"' + refRefFilename + '"') else ""} \
      ~{true="--show-progress" false="" showShowProgress} \
      ~{true="--compression-level" false="" compressionCompressionLevel} \
      ~{true="--output-filename" false="" outputOutputFilename} \
      ~{if defined(nNThreads) then ("--nthreads " +  '"' + nNThreads + '"') else ""} \
      ~{if defined(subsampleSubsample) then ("--subsample " +  '"' + subsampleSubsample + '"') else ""} \
      ~{if defined(subsamplingSubsamplingSeed) then ("--subsampling-seed " +  '"' + subsamplingSubsamplingSeed + '"') else ""}
  >>>
}