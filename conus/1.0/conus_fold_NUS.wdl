version 1.0

task ConusFoldNUS {
  input {
    Boolean optionsOptions
    String? seqSeqFileIn
  }
  command <<<
    conus_fold NUS \
      ~{seqSeqFileIn} \
      ~{true="-options" false="" optionsOptions}
  >>>
}