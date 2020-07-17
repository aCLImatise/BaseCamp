version 1.0

task GarnettClassifyCells.R {
  input {
    Boolean? verbose
    String? plot_output_path
    String? cds_output_obj
  }
  command <<<
    garnett_classify_cells.R \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(plot_output_path) then ("--plot-output-path " +  '"' + plot_output_path + '"') else ""} \
      ~{if defined(cds_output_obj) then ("--cds-output-obj " +  '"' + cds_output_obj + '"') else ""}
  >>>
  parameter_meta {
    verbose: "Logical. Should progress messages be printed. Default: FASLE."
    plot_output_path: "output path for the t-SNE plots. In case --cluster-extend tag is provided, two plots will be made. If no path is provided, plots will not be produced."
    cds_output_obj: "Output path for cds object holding predicted labels on query data"
  }
}