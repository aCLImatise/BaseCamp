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
  parameter_meta {
    data_filename: ""
    index_filename: ""
    out_dir: ""
  }
  output {
    File out_stdout = stdout()
  }
}