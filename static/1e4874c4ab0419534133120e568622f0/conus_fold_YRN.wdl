version 1.0

task ConusFoldYRN {
  input {
    Boolean optionsOptions
    String? seqSeqFileIn
  }
  command <<<
    conus_fold YRN \
      ~{seqSeqFileIn} \
      ~{true="-options" false="" optionsOptions}
  >>>
}