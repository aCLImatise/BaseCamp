version 1.0

task LzopBuildOffsetTablepy {
  command <<<
    lzop_build_offset_table_py
  >>>
  output {
    File out_stdout = stdout()
  }
}