version 1.0

task Liblistplbak {
  command <<<
    liblist_pl_bak
  >>>
  output {
    File out_stdout = stdout()
  }
}