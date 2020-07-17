version 1.0

task HmmgsFindCuts {
  input {
    String cut_finder
    String km_er_size
    String bloom_filter
    String query_files
  }
  command <<<
    hmmgs find-cuts \
      ~{cut_finder} \
      ~{km_er_size} \
      ~{bloom_filter} \
      ~{query_files}
  >>>
  parameter_meta {
    cut_finder: ""
    km_er_size: ""
    bloom_filter: ""
    query_files: ""
  }
}