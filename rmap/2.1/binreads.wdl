version 1.0

task Binreads {
  input {
    Boolean outputOutput
    Boolean chromChrom
    Boolean verboseVerbose
    Boolean binBin
    Boolean aboutAbout
    String? optionsOptions
    String? bedBedFormatFile
  }
  command <<<
    binreads \
      ~{optionsOptions} \
      ~{true="-output" false="" outputOutput} \
      ~{true="-chrom" false="" chromChrom} \
      ~{true="-verbose" false="" verboseVerbose} \
      ~{true="-bin" false="" binBin} \
      ~{true="-about" false="" aboutAbout} \
      ~{bedBedFormatFile}
  >>>
}