version 1.0

task ConservationAveragepl {
  command <<<
    conservationAverage_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}