version 1.0

task ConusFoldRY3 {
  input {
    Boolean optionsOptions
    String? seqSeqFileIn
  }
  command <<<
    conus_fold RY3 \
      ~{seqSeqFileIn} \
      ~{true="-options" false="" optionsOptions}
  >>>
}