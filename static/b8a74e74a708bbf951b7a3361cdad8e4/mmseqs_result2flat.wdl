version 1.0

task MmseqsResult2flat {
  input {
    Boolean useUseFastAHeader
    Boolean vV
  }
  command <<<
    mmseqs result2flat \
      ~{true="--use-fasta-header" false="" useUseFastAHeader} \
      ~{true="-v" false="" vV}
  >>>
}