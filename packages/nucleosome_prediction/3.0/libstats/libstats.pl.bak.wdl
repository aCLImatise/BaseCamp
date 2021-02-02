version 1.0

task Libstatsplbak {
  command <<<
    libstats_pl_bak
  >>>
  output {
    File out_stdout = stdout()
  }
}