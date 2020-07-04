version 1.0

task TOBIASPlotAggregate {
  input {
    Boolean? tfbs
    Boolean? signals
    Boolean? regions
    Boolean? whitelist
    Boolean? blacklist
    Boolean? path_output_tobiasaggregatepdf
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
      ~{true="--TFBS" false="" tfbs} \
      ~{true="--signals" false="" signals} \
      ~{true="--regions" false="" regions} \
      ~{true="--whitelist" false="" whitelist} \
      ~{true="--blacklist" false="" blacklist} \
      ~{true="--output" false="" path_output_tobiasaggregatepdf} \
      ~{true="--title" false="" title} \
      ~{true="--flank" false="" flank} \
      ~{true="--TFBS-labels" false="" tfbs_labels} \
      ~{true="--signal-labels" false="" signal_labels} \
      ~{true="--region-labels" false="" region_labels} \
      ~{true="--share-y" false="" share_y} \
      ~{true="--normalize" false="" normalize} \
      ~{true="--negate" false="" negate} \
      ~{if defined(smooth) then ("--smooth " +  '"' + smooth + '"') else ""} \
      ~{true="--log-transform" false="" log_transform} \
      ~{true="--plot-boundaries" false="" plot_boundaries} \
      ~{true="--signal-on-x" false="" signal_on_x} \
      ~{if defined(remove_outliers) then ("--remove-outliers " +  '"' + remove_outliers + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  parameter_meta {
    tfbs: "[<bed> [<bed> ...]]           TFBS sites (*required)"
    signals: "[<bigwig> [<bigwig> ...]]  Signals in bigwig format (*required)"
    regions: "[<bed> [<bed> ...]]        Regions to overlap with TFBS (optional)"
    whitelist: "[<bed> [<bed> ...]]      Only plot sites overlapping whitelist (optional)"
    blacklist: "[<bed> [<bed> ...]]      Exclude sites overlapping blacklist (optional)"
    path_output_tobiasaggregatepdf: "Path to output (default: TOBIAS_aggregate.pdf)"
    title: "Title of plot (default: \"Aggregated signals\")"
    flank: "Flanking basepairs (+/-) to show in plot (counted from middle of the TFBS) (default: 60)"
    tfbs_labels: "[ [ ...]]              Labels used for each TFBS file (default: prefix of each --TFBS)"
    signal_labels: "[ [ ...]]            Labels used for each signal file (default: prefix of each --signals)"
    region_labels: "[ [ ...]]            Labels used for each regions file (default: prefix of each --regions)"
    share_y: "Share y-axis range across plots (none/signals/sites/both). Use \"--share-y signals\" if bigwig signals have similar ranges. Use \"-- share_y sites\" if sites per bigwig are comparable, but bigwigs themselves aren't comparable (default: none)"
    normalize: "Normalize the aggregate signal(s) to be between 0-1 (default: the true range of values is shown)"
    negate: "Negate overlap with regions"
    smooth: "Smooth output signal by taking the mean of <smooth> bp windows (default: 1 (no smooth)"
    log_transform: "Log transform the signals before aggregation"
    plot_boundaries: "Plot TFBS boundaries (Note: estimated from first region in each --TFBS)"
    signal_on_x: "Show signals on x-axis and TFBSs on y-axis (default: signal is on y-axis)"
    remove_outliers: "Value between 0-1 indicating the percentile of regions to include, e.g. 0.99 to remove the sites with 1% highest values (default: 1)"
    verbosity: "Level of output logging (0: silent, 1: errors/warnings, 2: info, 3: stats, 4: debug, 5: spam) (default: 3)"
  }
}