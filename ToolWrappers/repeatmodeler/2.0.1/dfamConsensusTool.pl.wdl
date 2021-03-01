version 1.0

task DfamConsensusToolpl {
  command <<<
    dfamConsensusTool_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}