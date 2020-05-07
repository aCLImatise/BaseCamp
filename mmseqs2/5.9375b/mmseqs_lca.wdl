version 1.0

task MmseqsLca {
  input {
    Boolean lcaLcaRanks
    Boolean blacklistBlacklist
    Boolean threadsThreads
    Boolean vV
  }
  command <<<
    mmseqs lca \
      ~{true="--lca-ranks" false="" lcaLcaRanks} \
      ~{true="--blacklist" false="" blacklistBlacklist} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="-v" false="" vV}
  >>>
}