version 1.0

task UniquePeptidespl {
  command <<<
    uniquePeptides_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}