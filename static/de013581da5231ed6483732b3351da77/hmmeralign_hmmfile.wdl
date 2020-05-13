version 1.0

task HmmeralignHmmfile {
  input {
    Boolean optionsOptions
    String? seqSeqFile
  }
  command <<<
    hmmeralign hmmfile \
      ~{seqSeqFile} \
      ~{true="-options" false="" optionsOptions}
  >>>
}