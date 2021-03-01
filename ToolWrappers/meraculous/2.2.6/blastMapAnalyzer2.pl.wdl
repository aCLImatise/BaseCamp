version 1.0

task BlastMapAnalyzer2pl {
  command <<<
    blastMapAnalyzer2_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}