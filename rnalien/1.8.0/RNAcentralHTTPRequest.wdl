version 1.0

task RNAcentralHTTPRequest {
  input {
    Boolean verboseVerbose
    Boolean quietQuiet
  }
  command <<<
    RNAcentralHTTPRequest \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet}
  >>>
}