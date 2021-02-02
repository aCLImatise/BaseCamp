version 1.0

task Trunkreads {
  command <<<
    trunkreads
  >>>
  output {
    File out_stdout = stdout()
  }
}