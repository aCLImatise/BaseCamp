version 1.0

task Rmap {
  input {
    Boolean outputOutput
    Boolean chromChrom
    Boolean startStart
    Boolean numberNumber
    Boolean suffixSuffix
    Boolean mismatchMismatch
    Boolean ambiguousAmbiguous
    Boolean maxMaxMap
    Boolean clipClip
    Boolean verboseVerbose
    Boolean aboutAbout
    String? optionsOptions
    String? fastFastQReadsFile
  }
  command <<<
    rmap \
      ~{optionsOptions} \
      ~{true="-output" false="" outputOutput} \
      ~{true="-chrom" false="" chromChrom} \
      ~{true="-start" false="" startStart} \
      ~{true="-number" false="" numberNumber} \
      ~{true="-suffix" false="" suffixSuffix} \
      ~{true="-mismatch" false="" mismatchMismatch} \
      ~{true="-ambiguous" false="" ambiguousAmbiguous} \
      ~{true="-max-map" false="" maxMaxMap} \
      ~{true="-clip" false="" clipClip} \
      ~{true="-verbose" false="" verboseVerbose} \
      ~{true="-about" false="" aboutAbout} \
      ~{fastFastQReadsFile}
  >>>
}