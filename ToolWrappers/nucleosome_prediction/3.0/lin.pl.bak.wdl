version 1.0

task Linplbak {
  command <<<
    lin_pl_bak
  >>>
  output {
    File out_stdout = stdout()
  }
}