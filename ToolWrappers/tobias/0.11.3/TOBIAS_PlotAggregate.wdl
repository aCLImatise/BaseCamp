version 1.0

task TOBIASPlotAggregate {
  input {
    Boolean? tfbs
    Boolean? signals
    Boolean? regions
    Boolean? whitelist
    Boolean? blacklist
    File? path_output_default
    Boolean? title
    Boolean? flank
    Boolean? tfbs_labels
    Boolean? signal_labels
    Boolean? region_labels
    Boolean? share_y
    Boolean? normalize
    Boolean? negate
    Int? smooth
    Boolean? log_transform
    Boolean? plot_boundaries
    Boolean? signal_on_x
    Float? remove_outliers
    Int? verbosity
  }
  command <<<
    TOBIAS PlotAggregate \
      ~{if (tfbs) then "--TFBS" else ""} \
      ~{if (signals) then "--signals" else ""} \
      ~{if (regions) then "--regions" else ""} \
      ~{if (whitelist) then "--whitelist" else ""} \
      ~{if (blacklist) then "--blacklist" else ""} \
      ~{if (path_output_default) then "--output" else ""} \
      ~{if (title) then "--title" else ""} \
      ~{if (flank) then "--flank" else ""} \
      ~{if (tfbs_labels) then "--TFBS-labels" else ""} \
      ~{if (signal_labels) then "--signal-labels" else ""} \
      ~{if (region_labels) then "--region-labels" else ""} \
      ~{if (share_y) then "--share-y" else ""} \
      ~{if (normalize) then "--normalize" else ""} \
      ~{if (negate) then "--negate" else ""} \
      ~{if defined(smooth) then ("--smooth " +  '"' + smooth + '"') else ""} \
      ~{if (log_transform) then "--log-transform" else ""} \
      ~{if (plot_boundaries) then "--plot-boundaries" else ""} \
      ~{if (signal_on_x) then "--signal-on-x" else ""} \
      ~{if defined(remove_outliers) then ("--remove-outliers " +  '"' + remove_outliers + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    tfbs: "[<bed> [<bed> ...]]           TFBS sites (*required)"
    signals: "[<bigwig> [<bigwig> ...]]  Signals in bigwig format (*required)"
    regions: "[<bed> [<bed> ...]]        Regions to overlap with TFBS (optional)"
    whitelist: "[<bed> [<bed> ...]]      Only plot sites overlapping whitelist (optional)"
    blacklist: "[<bed> [<bed> ...]]      Exclude sites overlapping blacklist (optional)"
    path_output_default: "Path to output (default: TOBIAS_aggregate.pdf)"
    title: "Title of plot (default: \\\"Aggregated signals\\\")"
    flank: "Flanking basepairs (+/-) to show in plot (counted\\nfrom middle of the TFBS) (default: 60)"
    tfbs_labels: "[ [ ...]]              Labels used for each TFBS file (default: prefix of\\neach --TFBS)"
    signal_labels: "[ [ ...]]            Labels used for each signal file (default: prefix\\nof each --signals)"
    region_labels: "[ [ ...]]            Labels used for each regions file (default: prefix\\nof each --regions)"
    share_y: "Share y-axis range across plots\\n(none/signals/sites/both). Use \\\"--share-y signals\\\"\\nif bigwig signals have similar ranges. Use \\\"--\\nshare_y sites\\\" if sites per bigwig are comparable,\\nbut bigwigs themselves aren't comparable (default:\\nnone)"
    normalize: "Normalize the aggregate signal(s) to be between 0-1\\n(default: the true range of values is shown)"
    negate: "Negate overlap with regions"
    smooth: "Smooth output signal by taking the mean of <smooth>\\nbp windows (default: 1 (no smooth)"
    log_transform: "Log transform the signals before aggregation"
    plot_boundaries: "Plot TFBS boundaries (Note: estimated from first\\nregion in each --TFBS)"
    signal_on_x: "Show signals on x-axis and TFBSs on y-axis\\n(default: signal is on y-axis)"
    remove_outliers: "Value between 0-1 indicating the percentile of\\nregions to include, e.g. 0.99 to remove the sites\\nwith 1% highest values (default: 1)"
    verbosity: "Level of output logging (0: silent, 1:\\nerrors/warnings, 2: info, 3: stats, 4: debug, 5:\\nspam) (default: 3)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_path_output_default = "${in_path_output_default}"
  }
}