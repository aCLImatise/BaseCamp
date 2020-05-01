version 1.0

task FastenRandomize {
  input {
    Int numNumCpus
    Boolean pairedPairedEnd
    Boolean verboseVerbose
  }
  command <<<
    fasten_randomize \
      ~{if defined(numNumCpus) then ("--numcpus " +  '"' + numNumCpus + '"') else ""} \
      ~{true="--paired-end" false="" pairedPairedEnd} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}