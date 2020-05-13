version 1.0

task MmseqsSummarizetabs {
  input {
    Boolean eE
    Boolean cC
    Boolean overlapOverlap
    Boolean threadsThreads
    Boolean vV
  }
  command <<<
    mmseqs summarizetabs \
      ~{true="-e" false="" eE} \
      ~{true="-c" false="" cC} \
      ~{true="--overlap" false="" overlapOverlap} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="-v" false="" vV}
  >>>
}