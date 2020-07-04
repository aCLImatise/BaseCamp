version 1.0

task RNAcentralHTTPRequestBin {
  input {
    Boolean? verbose
    Boolean? quiet
  }
  command <<<
    RNAcentralHTTPRequest-bin \
      ~{true="--verbose" false="" verbose} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    verbose: "Loud verbosity"
    quiet: "Quiet verbosity"
  }
}