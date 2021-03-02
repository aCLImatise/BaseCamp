version 1.0

task MlUtilspy {
  command <<<
    ml_utils_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}