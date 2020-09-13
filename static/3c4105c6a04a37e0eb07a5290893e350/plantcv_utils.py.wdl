version 1.0

task Plantcvutilspy {
  command <<<
    plantcv_utils_py
  >>>
  output {
    File out_stdout = stdout()
  }
}