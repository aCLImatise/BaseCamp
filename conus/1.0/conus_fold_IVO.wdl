version 1.0

task ConusFoldIVO {
  input {
    Boolean optionsOptions
    String? seqSeqFileIn
  }
  command <<<
    conus_fold IVO \
      ~{seqSeqFileIn} \
      ~{true="-options" false="" optionsOptions}
  >>>
}