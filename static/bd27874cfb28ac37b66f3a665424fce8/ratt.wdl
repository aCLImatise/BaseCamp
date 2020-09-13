version 1.0

task Ratt {
  command <<<
    ratt
  >>>
  output {
    File out_stdout = stdout()
  }
}