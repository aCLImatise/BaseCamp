version 1.0

task Extractseq {
  input {
    Boolean outputOutput
    Boolean chromChrom
    Boolean verboseVerbose
    Boolean aboutAbout
    String? optionsOptions
    String? bedBedFormatRegions
  }
  command <<<
    extractseq \
      ~{optionsOptions} \
      ~{true="-output" false="" outputOutput} \
      ~{true="-chrom" false="" chromChrom} \
      ~{true="-verbose" false="" verboseVerbose} \
      ~{true="-about" false="" aboutAbout} \
      ~{bedBedFormatRegions}
  >>>
}