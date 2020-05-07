version 1.0

task PhmmerSeqfile {
  input {
    Boolean optionsOptions
    String? seqSeqDb
  }
  command <<<
    phmmer seqfile \
      ~{seqSeqDb} \
      ~{true="-options" false="" optionsOptions}
  >>>
}