version 1.0

task Rpstblastn {
  command <<<
    rpstblastn
  >>>
  output {
    File out_stdout = stdout()
  }
}