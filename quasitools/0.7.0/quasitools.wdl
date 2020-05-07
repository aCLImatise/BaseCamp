version 1.0

task Quasitools {
  input {
    Boolean verboseVerbose
  }
  command <<<
    quasitools \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}