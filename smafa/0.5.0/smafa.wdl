version 1.0

task Smafa {
  input {
    Boolean? quiet
    Boolean? verbose
  }
  command <<<
    smafa \
      ~{true="--quiet" false="" quiet} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    quiet: "Unless there is an error, do not print logging information"
    verbose: "Print extra debug logging information"
  }
}