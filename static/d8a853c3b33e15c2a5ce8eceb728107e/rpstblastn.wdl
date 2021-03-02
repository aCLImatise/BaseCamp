version 1.0

task Rpstblastn {
  command <<<
    rpstblastn
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}