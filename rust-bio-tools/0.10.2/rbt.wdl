version 1.0

task Rbt {
  input {
    Boolean? verbose
  }
  command <<<
    rbt \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    verbose: "Verbose output."
  }
}