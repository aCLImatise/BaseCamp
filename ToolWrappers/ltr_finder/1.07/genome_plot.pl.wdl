version 1.0

task GenomePlotpl {
  command <<<
    genome_plot_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}