version 1.0

task Comppair {
  input {
    Boolean optionsOptions
    String? seqSeqFileIn
  }
  command <<<
    comppair \
      ~{seqSeqFileIn} \
      ~{true="-options" false="" optionsOptions}
  >>>
}