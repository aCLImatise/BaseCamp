version 1.0

task ConservationPerLocuspl {
  command <<<
    conservationPerLocus_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}