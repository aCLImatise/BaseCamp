version 1.0

task MixedUtilspy {
  command <<<
    mixed_utils_py
  >>>
  output {
    File out_stdout = stdout()
  }
}