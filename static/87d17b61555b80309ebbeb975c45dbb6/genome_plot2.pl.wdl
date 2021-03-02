version 1.0

task GenomePlot2pl {
  command <<<
    genome_plot2_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}