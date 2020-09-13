version 1.0

task MlUtilspy {
  command <<<
    ml_utils_py
  >>>
  output {
    File out_stdout = stdout()
  }
}