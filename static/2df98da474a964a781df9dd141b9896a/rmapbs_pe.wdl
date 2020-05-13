version 1.0

task RmapbsPe {
  input {
    Boolean outputOutput
    Boolean chromChrom
    Boolean startStart
    Boolean numberNumber
    Boolean suffixSuffix
    Boolean mismatchMismatch
    Boolean maxMaxMap
    Boolean clipClip
    Boolean fraFraGlen
    Boolean suffixSuffixLen
    Boolean verboseVerbose
    Boolean aboutAbout
    String? optionsOptions
    String? fastFastQReadsFile
  }
  command <<<
    rmapbs-pe \
      ~{optionsOptions} \
      ~{true="-output" false="" outputOutput} \
      ~{true="-chrom" false="" chromChrom} \
      ~{true="-start" false="" startStart} \
      ~{true="-number" false="" numberNumber} \
      ~{true="-suffix" false="" suffixSuffix} \
      ~{true="-mismatch" false="" mismatchMismatch} \
      ~{true="-max-map" false="" maxMaxMap} \
      ~{true="-clip" false="" clipClip} \
      ~{true="-fraglen" false="" fraFraGlen} \
      ~{true="-suffix-len" false="" suffixSuffixLen} \
      ~{true="-verbose" false="" verboseVerbose} \
      ~{true="-about" false="" aboutAbout} \
      ~{fastFastQReadsFile}
  >>>
}