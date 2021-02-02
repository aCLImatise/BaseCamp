version 1.0

task ConservationAveragepl {
  command <<<
    conservationAverage_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}