version 1.0

task PlotGenomicKmersrbak {
  command <<<
    plot_genomic_kmers_r_bak
  >>>
  output {
    File out_stdout = stdout()
  }
}