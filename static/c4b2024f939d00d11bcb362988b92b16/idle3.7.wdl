version 1.0

task Idle37 {
  command <<<
    idle3_7
  >>>
  output {
    File out_stdout = stdout()
  }
}