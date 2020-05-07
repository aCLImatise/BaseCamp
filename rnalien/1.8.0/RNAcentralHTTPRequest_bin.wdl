version 1.0

task RNAcentralHTTPRequestBin {
  input {
    Boolean verboseVerbose
    Boolean quietQuiet
  }
  command <<<
    RNAcentralHTTPRequest-bin \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet}
  >>>
}