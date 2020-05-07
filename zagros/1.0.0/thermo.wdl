version 1.0

task Thermo {
  input {
    Boolean outputOutput
    Boolean chromChrom
    Boolean verboseVerbose
    Boolean aboutAbout
  }
  command <<<
    thermo \
      ~{true="-output" false="" outputOutput} \
      ~{true="-chrom" false="" chromChrom} \
      ~{true="-verbose" false="" verboseVerbose} \
      ~{true="-about" false="" aboutAbout}
  >>>
}