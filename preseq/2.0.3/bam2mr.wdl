version 1.0

task Bam2mr {
  input {
    Boolean outputOutput
    Boolean suffSuff
    Boolean segSegLen
    Boolean maxMaxReads
    Boolean verboseVerbose
    Boolean aboutAbout
    String? optionsOptions
    String? bamBamFile
  }
  command <<<
    bam2mr \
      ~{optionsOptions} \
      ~{true="-output" false="" outputOutput} \
      ~{true="-suff" false="" suffSuff} \
      ~{true="-seg_len" false="" segSegLen} \
      ~{true="-max_reads" false="" maxMaxReads} \
      ~{true="-verbose" false="" verboseVerbose} \
      ~{true="-about" false="" aboutAbout} \
      ~{bamBamFile}
  >>>
}