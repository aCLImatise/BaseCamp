version 1.0

task FfindexUnpack {
  input {
    String data_filename
    String index_filename
    String out_dir
  }
  command <<<
    ffindex_unpack \
      ~{data_filename} \
      ~{index_filename} \
      ~{out_dir}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hhsuite:3.3.0--py38pl526h6ed170a_0"
  }
  parameter_meta {
    data_filename: ""
    index_filename: ""
    out_dir: ""
  }
  output {
    File out_stdout = stdout()
  }
}