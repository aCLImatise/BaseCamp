version 1.0

task LzopBuildOffsetTablepy {
  command <<<
    lzop_build_offset_table_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}