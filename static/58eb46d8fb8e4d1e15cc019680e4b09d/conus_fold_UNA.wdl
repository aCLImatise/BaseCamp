version 1.0

task ConusFoldUNA {
  input {
    Boolean optionsOptions
    String? seqSeqFileIn
  }
  command <<<
    conus_fold UNA \
      ~{seqSeqFileIn} \
      ~{true="-options" false="" optionsOptions}
  >>>
}