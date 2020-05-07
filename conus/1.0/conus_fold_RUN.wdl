version 1.0

task ConusFoldRUN {
  input {
    Boolean optionsOptions
    String? seqSeqFileIn
  }
  command <<<
    conus_fold RUN \
      ~{seqSeqFileIn} \
      ~{true="-options" false="" optionsOptions}
  >>>
}