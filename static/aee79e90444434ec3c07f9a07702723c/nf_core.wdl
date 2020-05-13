version 1.0

task NfCore {
  input {
    Boolean verboseVerbose
  }
  command <<<
    nf-core \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}