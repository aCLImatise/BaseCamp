version 1.0

task FfindexFromFasta {
  input {
    Boolean? sort_index_file
    Boolean? v
  }
  command <<<
    ffindex_from_fasta \
      ~{true="-s" false="" sort_index_file} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    sort_index_file: "sort index file"
    v: ""
  }
}