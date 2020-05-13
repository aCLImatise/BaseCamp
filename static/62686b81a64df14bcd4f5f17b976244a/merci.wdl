version 1.0

task Merci {
  input {
    Boolean verboseVerbose
    Boolean nbNbCores
    Boolean kmKmErSize
    Boolean assemblyAssembly
    Boolean readsReads
  }
  command <<<
    merci \
      ~{true="-verbose" false="" verboseVerbose} \
      ~{true="-nb-cores" false="" nbNbCores} \
      ~{true="-kmer-size" false="" kmKmErSize} \
      ~{true="-assembly" false="" assemblyAssembly} \
      ~{true="-reads" false="" readsReads}
  >>>
}