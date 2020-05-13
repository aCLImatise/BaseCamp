version 1.0

task MmseqsResult2repseq {
  input {
    Boolean threadsThreads
    Boolean vV
  }
  command <<<
    mmseqs result2repseq \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="-v" false="" vV}
  >>>
}