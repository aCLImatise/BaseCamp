version 1.0

task PlotGenomicKmersr {
  command <<<
    plot_genomic_kmers_r
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}