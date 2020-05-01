version 1.0

task FastenKmer {
  input {
    Int numNumCpus
    Boolean pairedPairedEnd
    Boolean verboseVerbose
    Int kmKmErLength
  }
  command <<<
    fasten_kmer \
      ~{if defined(numNumCpus) then ("--numcpus " +  '"' + numNumCpus + '"') else ""} \
      ~{true="--paired-end" false="" pairedPairedEnd} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(kmKmErLength) then ("--kmer-length " +  '"' + kmKmErLength + '"') else ""}
  >>>
}