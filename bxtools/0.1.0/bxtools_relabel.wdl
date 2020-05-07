version 1.0

task BxtoolsRelabel {
  input {
    Boolean verboseVerbose
  }
  command <<<
    bxtools relabel \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}