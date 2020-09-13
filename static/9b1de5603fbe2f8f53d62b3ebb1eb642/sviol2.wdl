version 1.0

task Sviol2 {
  command <<<
    sviol2
  >>>
  output {
    File out_stdout = stdout()
  }
}