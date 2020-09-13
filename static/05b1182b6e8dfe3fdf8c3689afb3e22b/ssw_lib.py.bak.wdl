version 1.0

task SswLibpybak {
  command <<<
    ssw_lib_py_bak
  >>>
  output {
    File out_stdout = stdout()
  }
}