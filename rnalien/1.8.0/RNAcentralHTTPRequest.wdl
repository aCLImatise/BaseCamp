version 1.0

task RNAcentralHTTPRequest {
  input {
    Boolean? verbose
    Boolean? quiet
  }
  command <<<
    RNAcentralHTTPRequest \
      ~{true="--verbose" false="" verbose} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    verbose: "Loud verbosity"
    quiet: "Quiet verbosity"
  }
}