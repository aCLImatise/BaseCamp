version 1.0

task Galah {
  input {
    Boolean quietQuiet
    Boolean verboseVerbose
  }
  command <<<
    galah \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}