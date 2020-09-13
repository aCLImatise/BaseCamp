version 1.0

task Groups {
  command <<<
    groups
  >>>
  output {
    File out_stdout = stdout()
  }
}