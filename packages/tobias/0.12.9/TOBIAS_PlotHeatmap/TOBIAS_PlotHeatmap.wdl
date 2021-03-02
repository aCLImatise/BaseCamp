version 1.0

task TOBIASPlotHeatmap {
  input {
    Boolean? tfbs
    Boolean? signals
    File? output_filename_default
    Boolean? plot_boundaries
    Boolean? share_colorbar
    Boolean? tfbs_labels
    Boolean? signal_labels
    Boolean? show_columns
    Boolean? sort_by
    Int? verbosity
  }
  command <<<
    TOBIAS PlotHeatmap \
      ~{if (tfbs) then "--TFBS" else ""} \
      ~{if (signals) then "--signals" else ""} \
      ~{if (output_filename_default) then "--output" else ""} \
      ~{if (plot_boundaries) then "--plot-boundaries" else ""} \
      ~{if (share_colorbar) then "--share-colorbar" else ""} \
      ~{if (tfbs_labels) then "--TFBS-labels" else ""} \
      ~{if (signal_labels) then "--signal-labels" else ""} \
      ~{if (show_columns) then "--show-columns" else ""} \
      ~{if (sort_by) then "--sort-by" else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/tobias:0.12.9--py36h29c9776_0"
  }
  parameter_meta {
    tfbs: "[ [ ...]]           TFBS sites per column (*required)"
    signals: "[ [ ...]]        Signals in bigwig format (*required)"
    output_filename_default: "Output filename (default: TOBIAS_heatmap.pdf)"
    plot_boundaries: "Plot TFBS boundaries"
    share_colorbar: "Share colorbar across all bigwigs (default: estimate colorbar\\nper bigwig)"
    tfbs_labels: "[ [ ...]]    Labels of TFBS (default: basename of --TFBS)"
    signal_labels: "[ [ ...]]  Labels of signals (default: basename of --signals)"
    show_columns: "[ [ ...]]   Show scores from TFBS column besides heatmap. Set to 0-based\\npython coordinates (for example -1 for last column) (default:\\nNone)"
    sort_by: "Columns in .bed to sort heatmap by (default: input .beds are\\nnot sorted)"
    verbosity: "Level of output logging (0: silent, 1: errors/warnings, 2:\\ninfo, 3: stats, 4: debug, 5: spam) (default: 3)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_filename_default = "${in_output_filename_default}"
  }
}