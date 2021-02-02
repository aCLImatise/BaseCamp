version 1.0

task ValidationUtilspy {
  command <<<
    validation_utils_py
  >>>
  output {
    File out_stdout = stdout()
  }
}