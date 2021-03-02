version 1.0

task Terminate {
  command <<<
    terminate
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}