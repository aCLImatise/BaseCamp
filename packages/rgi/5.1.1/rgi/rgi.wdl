version 1.0

task Rgi {
  command <<<
    rgi
  >>>
  output {
    File out_stdout = stdout()
  }
}