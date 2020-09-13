version 1.0

task Gxw2consensusplbak {
  command <<<
    gxw2consensus_pl_bak
  >>>
  output {
    File out_stdout = stdout()
  }
}