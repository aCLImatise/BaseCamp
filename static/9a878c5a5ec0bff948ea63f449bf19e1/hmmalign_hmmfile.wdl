version 1.0

task HmmalignHmmfile {
  input {
    Boolean optionsOptions
    String? seqSeqFile
  }
  command <<<
    hmmalign hmmfile \
      ~{seqSeqFile} \
      ~{true="-options" false="" optionsOptions}
  >>>
}