version 1.0

task ScoreMotifpl {
  command <<<
    ScoreMotif_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}