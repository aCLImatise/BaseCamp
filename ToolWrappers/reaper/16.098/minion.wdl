version 1.0

task Minion {
  command <<<
    minion
  >>>
  output {
    File out_stdout = stdout()
  }
}