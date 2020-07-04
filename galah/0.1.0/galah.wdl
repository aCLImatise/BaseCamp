version 1.0

task Galah {
  input {
    Boolean? quiet
    Boolean? verbose
  }
  command <<<
    galah \
      ~{true="--quiet" false="" quiet} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    quiet: "Unless there is an error, do not print logging information"
    verbose: "Print extra debug logging information"
  }
}