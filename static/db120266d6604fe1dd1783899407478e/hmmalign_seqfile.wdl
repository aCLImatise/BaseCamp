version 1.0

task HmmalignSeqfile {
  input {
    Boolean optionsOptions
    String? hmmHmmFile
    String? seqSeqFile
  }
  command <<<
    hmmalign seqfile \
      ~{hmmHmmFile} \
      ~{true="-options" false="" optionsOptions} \
      ~{seqSeqFile}
  >>>
}