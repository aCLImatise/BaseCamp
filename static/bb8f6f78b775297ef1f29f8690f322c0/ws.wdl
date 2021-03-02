version 1.0

task Ws {
  command <<<
    ws
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}