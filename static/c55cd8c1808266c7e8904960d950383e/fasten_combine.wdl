version 1.0

task FastenCombine {
  input {
    Int numNumCpus
    Boolean pairedPairedEnd
    Boolean verboseVerbose
  }
  command <<<
    fasten_combine \
      ~{if defined(numNumCpus) then ("--numcpus " +  '"' + numNumCpus + '"') else ""} \
      ~{true="--paired-end" false="" pairedPairedEnd} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}