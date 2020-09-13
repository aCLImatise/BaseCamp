version 1.0

task UniquePeptidespl {
  command <<<
    uniquePeptides_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}