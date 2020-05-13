version 1.0

task MmseqsMergeresultsbyset {
  input {
    Boolean threadsThreads
    Boolean vV
  }
  command <<<
    mmseqs mergeresultsbyset \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="-v" false="" vV}
  >>>
}