version 1.0

task Tba {
  command <<<
    tba
  >>>
  output {
    File out_stdout = stdout()
  }
}