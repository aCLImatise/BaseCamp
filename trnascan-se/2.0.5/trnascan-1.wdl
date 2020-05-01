version 1.0

task Trnascan1.4 {
  input {
    Boolean optionsOptions
    String? trnascanTrnascan
    String? seqSeqFile
  }
  command <<<
    trnascan-1.4 \
      ~{trnascanTrnascan} \
      ~{true="-options" false="" optionsOptions} \
      ~{seqSeqFile}
  >>>
}