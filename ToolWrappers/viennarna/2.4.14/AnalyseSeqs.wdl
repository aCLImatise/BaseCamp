version 1.0

task AnalyseSeqs {
  command <<<
    AnalyseSeqs
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}