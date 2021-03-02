version 1.0

task FfindexGet {
  input {
    Boolean? use_index_name
    String data_filename
    String index_filename
    String entry
    String name
  }
  command <<<
    ffindex_get \
      ~{data_filename} \
      ~{index_filename} \
      ~{entry} \
      ~{name} \
      ~{if (use_index_name) then "-n" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hhsuite:3.3.0--py38pl526h6ed170a_0"
  }
  parameter_meta {
    use_index_name: "use index of entry instead of entry name"
    data_filename: ""
    index_filename: ""
    entry: ""
    name: ""
  }
  output {
    File out_stdout = stdout()
  }
}