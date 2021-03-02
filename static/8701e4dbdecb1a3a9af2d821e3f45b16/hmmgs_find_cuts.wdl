version 1.0

task HmmgsFindcuts {
  input {
    String cut_finder
    Int km_er_size
    String bloom_filter
    String query_files
  }
  command <<<
    hmmgs find_cuts \
      ~{cut_finder} \
      ~{km_er_size} \
      ~{bloom_filter} \
      ~{query_files}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    cut_finder: ""
    km_er_size: ""
    bloom_filter: ""
    query_files: ""
  }
  output {
    File out_stdout = stdout()
  }
}