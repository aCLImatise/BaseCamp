version 1.0

task ConusFoldUYN {
  input {
    Boolean optionsOptions
    String? seqSeqFileIn
  }
  command <<<
    conus_fold UYN \
      ~{seqSeqFileIn} \
      ~{true="-options" false="" optionsOptions}
  >>>
}