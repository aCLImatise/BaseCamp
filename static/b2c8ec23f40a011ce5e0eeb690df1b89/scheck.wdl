version 1.0

task Scheck {
  input {
    Boolean optionsOptions
    String? sSTest
    String? seqSeqFileIn
  }
  command <<<
    scheck \
      ~{sSTest} \
      ~{true="-options" false="" optionsOptions} \
      ~{seqSeqFileIn}
  >>>
}