version 1.0

task Idle3 {
  command <<<
    idle3
  >>>
  output {
    File out_stdout = stdout()
  }
}