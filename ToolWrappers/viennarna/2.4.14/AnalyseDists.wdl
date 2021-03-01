version 1.0

task AnalyseDists {
  command <<<
    AnalyseDists
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}