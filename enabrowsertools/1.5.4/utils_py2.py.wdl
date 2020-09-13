version 1.0

task UtilsPy2py {
  command <<<
    utils_py2_py
  >>>
  output {
    File out_stdout = stdout()
  }
}