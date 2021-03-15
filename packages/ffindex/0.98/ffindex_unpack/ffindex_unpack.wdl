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
    docker: "quay.io/biocontainers/ffindex:0.98--hc9558a2_0"
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