version 1.0

task MmseqsResult2stats {
  input {
    Boolean statStat
    Boolean threadsThreads
    Boolean vV
  }
  command <<<
    mmseqs result2stats \
      ~{true="--stat" false="" statStat} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="-v" false="" vV}
  >>>
}