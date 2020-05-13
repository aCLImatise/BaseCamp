version 1.0

task ConusFoldBK2 {
  input {
    Boolean optionsOptions
    String? seqSeqFileIn
  }
  command <<<
    conus_fold BK2 \
      ~{seqSeqFileIn} \
      ~{true="-options" false="" optionsOptions}
  >>>
}