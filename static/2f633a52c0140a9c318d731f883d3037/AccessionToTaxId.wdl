version 1.0

task AccessionToTaxId {
  input {
    Boolean verboseVerbose
    Boolean quietQuiet
  }
  command <<<
    AccessionToTaxId \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet}
  >>>
}