version 1.0

task Gxw2statsplbak {
  command <<<
    gxw2stats_pl_bak
  >>>
  output {
    File out_stdout = stdout()
  }
}