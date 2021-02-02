version 1.0

task JoinPeptidespl {
  command <<<
    joinPeptides_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}