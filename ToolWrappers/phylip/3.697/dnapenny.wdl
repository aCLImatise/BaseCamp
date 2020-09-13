version 1.0

task Dnapenny {
  command <<<
    dnapenny
  >>>
  output {
    File out_stdout = stdout()
  }
}