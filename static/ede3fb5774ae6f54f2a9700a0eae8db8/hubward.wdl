version 1.0

task Hubward {
  command <<<
    hubward
  >>>
  output {
    File out_stdout = stdout()
  }
}