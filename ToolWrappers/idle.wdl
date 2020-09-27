version 1.0

task Idle {
  command <<<
    idle
  >>>
  output {
    File out_stdout = stdout()
  }
}