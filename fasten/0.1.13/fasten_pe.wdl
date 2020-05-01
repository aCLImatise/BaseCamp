version 1.0

task FastenPe {
  input {
    Int numNumCpus
    Boolean pairedPairedEnd
    Boolean verboseVerbose
    Boolean printPrintReads
  }
  command <<<
    fasten_pe \
      ~{if defined(numNumCpus) then ("--numcpus " +  '"' + numNumCpus + '"') else ""} \
      ~{true="--paired-end" false="" pairedPairedEnd} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--print-reads" false="" printPrintReads}
  >>>
}