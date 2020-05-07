version 1.0

task MmseqsProteinaln2nucl {
  input {
    Boolean threadsThreads
    Boolean vV
  }
  command <<<
    mmseqs proteinaln2nucl \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="-v" false="" vV}
  >>>
}