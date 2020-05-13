version 1.0

task ConusFoldBJK {
  input {
    Boolean optionsOptions
    String? seqSeqFileIn
  }
  command <<<
    conus_fold BJK \
      ~{seqSeqFileIn} \
      ~{true="-options" false="" optionsOptions}
  >>>
}