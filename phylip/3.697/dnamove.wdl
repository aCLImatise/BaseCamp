version 1.0

task Dnamove {
  command <<<
    dnamove
  >>>
  output {
    File out_stdout = stdout()
  }
}