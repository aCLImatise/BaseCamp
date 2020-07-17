version 1.0

task FfindexFromFastaWithSplit {
  input {
    Boolean? sort_index_file
    Boolean? v
  }
  command <<<
    ffindex_from_fasta_with_split \
      ~{true="-s" false="" sort_index_file} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    sort_index_file: "sort index file"
    v: ""
  }
}