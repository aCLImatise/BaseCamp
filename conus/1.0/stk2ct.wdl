version 1.0

task Stk2ct {
  input {
    Boolean optionsOptions
    String? giveGiveCt
    String? seqSeqFileIn
  }
  command <<<
    stk2ct \
      ~{giveGiveCt} \
      ~{true="-options" false="" optionsOptions} \
      ~{seqSeqFileIn}
  >>>
}