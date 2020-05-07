version 1.0

task ComputePriorDistNumBins {
  input {
    String? pspPspFile
  }
  command <<<
    compute-prior-dist num-bins \
      ~{pspPspFile}
  >>>
}