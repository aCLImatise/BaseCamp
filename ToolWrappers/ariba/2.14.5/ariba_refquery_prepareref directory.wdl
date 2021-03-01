version 1.0

task AribaRefqueryPreparerefdirectory {
  input {
    String prepare_ref_dir
    String search_name
  }
  command <<<
    ariba refquery prepareref_directory \
      ~{prepare_ref_dir} \
      ~{search_name}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    prepare_ref_dir: "Name of directory output by prepareref"
    search_name: "Name of cluster or sequence to search for"
  }
  output {
    File out_stdout = stdout()
  }
}