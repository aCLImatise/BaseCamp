version 1.0

task Printtiff {
  command <<<
    printtiff
  >>>
  output {
    File out_stdout = stdout()
  }
}