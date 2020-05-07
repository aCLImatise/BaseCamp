version 1.0

task MmseqsCreatetsv {
  input {
    Boolean firstFirstSeqAsRepr
    Boolean targetTargetColumn
    Boolean fullFullHeader
    Boolean dbDbOutput
    Boolean threadsThreads
    Boolean vV
  }
  command <<<
    mmseqs createtsv \
      ~{true="--first-seq-as-repr" false="" firstFirstSeqAsRepr} \
      ~{true="--target-column" false="" targetTargetColumn} \
      ~{true="--full-header" false="" fullFullHeader} \
      ~{true="--db-output" false="" dbDbOutput} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="-v" false="" vV}
  >>>
}