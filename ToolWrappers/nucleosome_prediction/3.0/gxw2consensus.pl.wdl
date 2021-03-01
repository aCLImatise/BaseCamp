version 1.0

task Gxw2consensuspl {
  command <<<
    gxw2consensus_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}