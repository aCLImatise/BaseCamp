version 1.0

task MmseqsExtractdomains {
  input {
    Boolean eE
    Boolean cC
    Boolean msaMsaType
    Boolean subSubMat
    Boolean threadsThreads
    Boolean vV
  }
  command <<<
    mmseqs extractdomains \
      ~{true="-e" false="" eE} \
      ~{true="-c" false="" cC} \
      ~{true="--msa-type" false="" msaMsaType} \
      ~{true="--sub-mat" false="" subSubMat} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="-v" false="" vV}
  >>>
}