version 1.0

task NhmmscanSeqfile {
  input {
    Boolean optionsOptions
    String? hmmHmmDb
    String? seqSeqFile
  }
  command <<<
    nhmmscan seqfile \
      ~{hmmHmmDb} \
      ~{true="-options" false="" optionsOptions} \
      ~{seqSeqFile}
  >>>
}