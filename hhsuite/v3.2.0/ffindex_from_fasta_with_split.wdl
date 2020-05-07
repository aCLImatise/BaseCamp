version 1.0

task FfindexFromFastaWithSplit {
  input {
    Boolean sS
  }
  command <<<
    ffindex_from_fasta_with_split \
      ~{true="-s" false="" sS}
  >>>
}