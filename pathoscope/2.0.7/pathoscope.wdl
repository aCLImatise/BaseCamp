version 1.0

task Pathoscope {
  input {
    Boolean verboseVerbose
  }
  command <<<
    pathoscope \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}