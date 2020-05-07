version 1.0

task Staramr {
  input {
    Boolean verboseVerbose
  }
  command <<<
    staramr \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}