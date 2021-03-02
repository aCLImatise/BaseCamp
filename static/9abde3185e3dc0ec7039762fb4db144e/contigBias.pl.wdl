version 1.0

task ContigBiaspl {
  command <<<
    contigBias_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}