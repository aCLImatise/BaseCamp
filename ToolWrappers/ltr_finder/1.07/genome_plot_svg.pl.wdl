version 1.0

task GenomePlotSvgpl {
  command <<<
    genome_plot_svg_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}