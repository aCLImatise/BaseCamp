version 1.0

task Red {
  command <<<
    Red
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}