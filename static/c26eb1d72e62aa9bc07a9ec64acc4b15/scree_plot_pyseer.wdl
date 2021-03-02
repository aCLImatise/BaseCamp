version 1.0

task ScreePlotPyseer {
  input {
    Int? max_dimensions
    File? plot_filename
  }
  command <<<
    scree_plot_pyseer \
      ~{if defined(max_dimensions) then ("--max-dimensions " +  '"' + max_dimensions + '"') else ""} \
      ~{if defined(plot_filename) then ("--output " +  '"' + plot_filename + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    max_dimensions: "Maximum dimensions to plot [Default: 30]"
    plot_filename: "Plot filename [Default: scree_plot.png]"
  }
  output {
    File out_stdout = stdout()
  }
}