version 1.0

task Libsetplbak {
  command <<<
    libset_pl_bak
  >>>
  output {
    File out_stdout = stdout()
  }
}