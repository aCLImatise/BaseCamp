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
  runtime {
    docker: "quay.io/biocontainers/ffindex:0.98--hc9558a2_0"
  }
  parameter_meta {
    sort_index_file: "sort index file"
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}