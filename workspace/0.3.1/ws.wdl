version 1.0

task Ws {
  command <<<
    ws
  >>>
  output {
    File out_stdout = stdout()
  }
}