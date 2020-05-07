version 1.0

task Kinwalker {
  input {
    Boolean testTest
    Boolean verboseVerbose
    String? optionsOptions
    String? seqSeqFile
    String? outfileOutfile
  }
  command <<<
    kinwalker \
      ~{optionsOptions} \
      ~{true="--test" false="" testTest} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{seqSeqFile} \
      ~{outfileOutfile}
  >>>
}