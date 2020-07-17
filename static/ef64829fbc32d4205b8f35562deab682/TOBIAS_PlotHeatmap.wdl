version 1.0

task TOBIASPlotHeatmap {
  input {
    Boolean? tfbs
    Boolean? signals
    Boolean? output_filename_default
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
      ~{true="--TFBS" false="" tfbs} \
      ~{true="--signals" false="" signals} \
      ~{true="--output" false="" output_filename_default} \
      ~{true="--plot-boundaries" false="" plot_boundaries} \
      ~{true="--share-colorbar" false="" share_colorbar} \
      ~{true="--TFBS-labels" false="" tfbs_labels} \
      ~{true="--signal-labels" false="" signal_labels} \
      ~{true="--show-columns" false="" show_columns} \
      ~{true="--sort-by" false="" sort_by} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  parameter_meta {
    tfbs: "[ [ ...]]           TFBS sites per column (*required)"
    signals: "[ [ ...]]        Signals in bigwig format (*required)"
    output_filename_default: "Output filename (default: TOBIAS_heatmap.pdf)"
    plot_boundaries: "Plot TFBS boundaries"
    share_colorbar: "Share colorbar across all bigwigs (default: estimate colorbar per bigwig)"
    tfbs_labels: "[ [ ...]]    Labels of TFBS (default: basename of --TFBS)"
    signal_labels: "[ [ ...]]  Labels of signals (default: basename of --signals)"
    show_columns: "[ [ ...]]   Show scores from TFBS column besides heatmap. Set to 0-based python coordinates (for example -1 for last column) (default: None)"
    sort_by: "Columns in .bed to sort heatmap by (default: input .beds are not sorted)"
    verbosity: "Level of output logging (0: silent, 1: errors/warnings, 2: info, 3: stats, 4: debug, 5: spam) (default: 3)"
  }
}