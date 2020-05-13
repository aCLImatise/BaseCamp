version 1.0

task NhmmscanHmmdb {
  input {
    Boolean optionsOptions
    String? seqSeqFile
  }
  command <<<
    nhmmscan hmmdb \
      ~{seqSeqFile} \
      ~{true="-options" false="" optionsOptions}
  >>>
}