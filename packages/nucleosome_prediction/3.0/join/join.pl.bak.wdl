version 1.0

task Joinplbak {
  command <<<
    join_pl_bak
  >>>
  output {
    File out_stdout = stdout()
  }
}