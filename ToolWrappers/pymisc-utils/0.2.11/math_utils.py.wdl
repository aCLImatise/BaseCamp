version 1.0

task MathUtilspy {
  command <<<
    math_utils_py
  >>>
  output {
    File out_stdout = stdout()
  }
}