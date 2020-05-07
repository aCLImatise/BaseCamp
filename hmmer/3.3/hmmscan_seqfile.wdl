version 1.0

task HmmscanSeqfile {
  input {
    Boolean optionsOptions
    String? hmmHmmDb
    String? seqSeqFile
  }
  command <<<
    hmmscan seqfile \
      ~{hmmHmmDb} \
      ~{true="-options" false="" optionsOptions} \
      ~{seqSeqFile}
  >>>
}