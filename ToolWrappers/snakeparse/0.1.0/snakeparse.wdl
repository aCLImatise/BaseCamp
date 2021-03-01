version 1.0

task Snakeparse {
  command <<<
    snakeparse
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}