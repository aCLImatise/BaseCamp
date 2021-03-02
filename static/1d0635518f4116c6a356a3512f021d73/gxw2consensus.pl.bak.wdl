version 1.0

task Gxw2consensusplbak {
  command <<<
    gxw2consensus_pl_bak
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}