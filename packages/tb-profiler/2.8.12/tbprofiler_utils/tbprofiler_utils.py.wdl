version 1.0

task TbprofilerUtilspy {
  command <<<
    tbprofiler_utils_py
  >>>
  output {
    File out_stdout = stdout()
  }
}