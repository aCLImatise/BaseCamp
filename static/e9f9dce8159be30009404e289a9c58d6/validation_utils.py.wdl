version 1.0

task ValidationUtilspy {
  command <<<
    validation_utils_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}