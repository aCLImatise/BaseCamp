version 1.0

task HmmscanHmmdb {
  input {
    Boolean optionsOptions
    String? seqSeqFile
  }
  command <<<
    hmmscan hmmdb \
      ~{seqSeqFile} \
      ~{true="-options" false="" optionsOptions}
  >>>
}