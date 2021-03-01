version 1.0

task ScoreAlignment {
  command <<<
    scoreAlignment
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}