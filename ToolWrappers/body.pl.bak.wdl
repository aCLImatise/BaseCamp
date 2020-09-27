version 1.0

task Bodyplbak {
  command <<<
    body_pl_bak
  >>>
  output {
    File out_stdout = stdout()
  }
}