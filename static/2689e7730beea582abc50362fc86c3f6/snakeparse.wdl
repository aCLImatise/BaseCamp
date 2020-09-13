version 1.0

task Snakeparse {
  command <<<
    snakeparse
  >>>
  output {
    File out_stdout = stdout()
  }
}