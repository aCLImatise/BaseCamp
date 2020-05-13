version 1.0

task HmmeralignSeqfile {
  input {
    Boolean optionsOptions
    String? hmmHmmFile
    String? seqSeqFile
  }
  command <<<
    hmmeralign seqfile \
      ~{hmmHmmFile} \
      ~{true="-options" false="" optionsOptions} \
      ~{seqSeqFile}
  >>>
}