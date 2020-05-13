version 1.0

task MmseqsExtractalignedregion {
  input {
    Boolean extractExtractMode
    Boolean noNoPreload
    Boolean threadsThreads
    Boolean vV
  }
  command <<<
    mmseqs extractalignedregion \
      ~{true="--extract-mode" false="" extractExtractMode} \
      ~{true="--no-preload" false="" noNoPreload} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="-v" false="" vV}
  >>>
}