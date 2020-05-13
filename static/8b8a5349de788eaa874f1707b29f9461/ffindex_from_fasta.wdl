version 1.0

task FfindexFromFasta {
  input {
    Boolean sS
  }
  command <<<
    ffindex_from_fasta \
      ~{true="-s" false="" sS}
  >>>
}