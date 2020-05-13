version 1.0

task MmseqsSummarizeheaders {
  input {
    Boolean headerHeaderType
    Boolean threadsThreads
    Boolean vV
  }
  command <<<
    mmseqs summarizeheaders \
      ~{true="--header-type" false="" headerHeaderType} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="-v" false="" vV}
  >>>
}