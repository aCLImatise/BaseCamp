version 1.0

task MathUtilspy {
  command <<<
    math_utils_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}