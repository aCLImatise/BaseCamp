version 1.0

task CMVJson {
  input {
    Boolean verboseVerbose
    Boolean quietQuiet
  }
  command <<<
    CMVJson \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet}
  >>>
}