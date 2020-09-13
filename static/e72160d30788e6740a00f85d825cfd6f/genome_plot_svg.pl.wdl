version 1.0

task GenomePlotSvgpl {
  command <<<
    genome_plot_svg_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}