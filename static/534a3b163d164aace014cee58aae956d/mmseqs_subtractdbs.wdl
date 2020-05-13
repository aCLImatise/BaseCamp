version 1.0

task MmseqsSubtractdbs {
  input {
    Boolean eEProfile
    Boolean threadsThreads
    Boolean vV
  }
  command <<<
    mmseqs subtractdbs \
      ~{true="--e-profile" false="" eEProfile} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="-v" false="" vV}
  >>>
}