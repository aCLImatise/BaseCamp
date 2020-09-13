version 1.0

task FfindexFromFasta {
  input {
    Boolean? sort_index_file
    Boolean? v
  }
  command <<<
    ffindex_from_fasta \
      ~{if (sort_index_file) then "-s" else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    sort_index_file: "sort index file"
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}