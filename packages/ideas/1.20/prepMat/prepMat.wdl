version 1.0

task PrepMat {
  command <<<
    prepMat
  >>>
  output {
    File out_stdout = stdout()
  }
}