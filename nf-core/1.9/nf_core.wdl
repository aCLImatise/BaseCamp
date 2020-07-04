version 1.0

task NfCore {
  input {
    Boolean? verbose
  }
  command <<<
    nf-core \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    verbose: "Verbose output (print debug statements)"
  }
}