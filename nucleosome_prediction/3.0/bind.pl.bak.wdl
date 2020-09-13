version 1.0

task Bindplbak {
  command <<<
    bind_pl_bak
  >>>
  output {
    File out_stdout = stdout()
  }
}