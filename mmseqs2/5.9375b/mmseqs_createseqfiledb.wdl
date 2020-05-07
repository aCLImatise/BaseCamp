version 1.0

task MmseqsCreateseqfiledb {
  input {
    Boolean minMinSequences
    Boolean maxMaxSequences
    Boolean hhHhFormat
    Boolean threadsThreads
    Boolean vV
  }
  command <<<
    mmseqs createseqfiledb \
      ~{true="--min-sequences" false="" minMinSequences} \
      ~{true="--max-sequences" false="" maxMaxSequences} \
      ~{true="--hh-format" false="" hhHhFormat} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="-v" false="" vV}
  >>>
}