version 1.0

task TSSARbak {
  command <<<
    TSSAR_bak
  >>>
  output {
    File out_stdout = stdout()
  }
}