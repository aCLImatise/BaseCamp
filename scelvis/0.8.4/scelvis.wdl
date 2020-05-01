version 1.0

task Scelvis {
  input {
    Boolean verboseVerbose
  }
  command <<<
    scelvis \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}