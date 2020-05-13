version 1.0

task MmseqsMergeclusters {
  input {
    Boolean threadsThreads
    Boolean vV
  }
  command <<<
    mmseqs mergeclusters \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="-v" false="" vV}
  >>>
}