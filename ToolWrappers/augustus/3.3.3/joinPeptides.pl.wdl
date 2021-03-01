version 1.0

task JoinPeptidespl {
  command <<<
    joinPeptides_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}