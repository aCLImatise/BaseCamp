version 1.0

task ContigBiaspl {
  command <<<
    contigBias_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}