version 1.0

task Pocheck {
  input {
    Boolean optionsOptions
    String? seqSeqFileIn
  }
  command <<<
    pocheck \
      ~{seqSeqFileIn} \
      ~{true="-options" false="" optionsOptions}
  >>>
}