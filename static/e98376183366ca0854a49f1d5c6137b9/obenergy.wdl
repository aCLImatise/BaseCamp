version 1.0

task Obenergy {
  command <<<
    obenergy
  >>>
  output {
    File out_stdout = stdout()
  }
}