version 1.0

task ComputePriorDistPspFile {
  input {
    String? numNumBins
    String? pspPspFile
  }
  command <<<
    compute-prior-dist psp-file \
      ~{numNumBins} \
      ~{pspPspFile}
  >>>
}