version 1.0

task Idle {
  command <<<
    idle
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}