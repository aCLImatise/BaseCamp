version 1.0

task Smafa {
  input {
    Boolean quietQuiet
    Boolean verboseVerbose
  }
  command <<<
    smafa \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}