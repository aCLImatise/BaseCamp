version 1.0

task PhmmerSeqdb {
  input {
    Boolean optionsOptions
    String? seqSeqFile
    String? seqSeqDb
  }
  command <<<
    phmmer seqdb \
      ~{seqSeqFile} \
      ~{true="-options" false="" optionsOptions} \
      ~{seqSeqDb}
  >>>
}