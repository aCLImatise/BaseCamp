version 1.0

task BbAnalyze {
  command <<<
    bbAnalyze
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}