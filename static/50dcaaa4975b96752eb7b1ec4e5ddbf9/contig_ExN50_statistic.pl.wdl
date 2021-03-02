version 1.0

task ContigExN50Statisticpl {
  command <<<
    contig_ExN50_statistic_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}