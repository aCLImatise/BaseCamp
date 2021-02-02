version 1.0

task Libattribplbak {
  command <<<
    libattrib_pl_bak
  >>>
  output {
    File out_stdout = stdout()
  }
}