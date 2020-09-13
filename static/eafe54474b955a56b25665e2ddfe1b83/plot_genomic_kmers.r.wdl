version 1.0

task PlotGenomicKmersr {
  command <<<
    plot_genomic_kmers_r
  >>>
  output {
    File out_stdout = stdout()
  }
}