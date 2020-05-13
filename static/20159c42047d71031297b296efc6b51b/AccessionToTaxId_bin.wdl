version 1.0

task AccessionToTaxIdBin {
  input {
    Boolean verboseVerbose
    Boolean quietQuiet
  }
  command <<<
    AccessionToTaxId-bin \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet}
  >>>
}