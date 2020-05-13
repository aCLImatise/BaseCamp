version 1.0

task MmseqsDiffseqdbs {
  input {
    Boolean useUseSeqId
    Boolean threadsThreads
    Boolean vV
  }
  command <<<
    mmseqs diffseqdbs \
      ~{true="--use-seq-id" false="" useUseSeqId} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="-v" false="" vV}
  >>>
}