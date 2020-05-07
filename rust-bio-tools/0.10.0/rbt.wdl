version 1.0

task Rbt {
  input {
    Boolean verboseVerbose
  }
  command <<<
    rbt \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}