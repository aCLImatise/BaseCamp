version 1.0

task TOBIASPlotChanges {
  input {
    Boolean? bin_detect
    Boolean? tfs
    Boolean? output_file_plot
    Boolean? conditions
    Int? verbosity
  }
  command <<<
    TOBIAS PlotChanges \
      ~{true="--bindetect" false="" bin_detect} \
      ~{true="--TFS" false="" tfs} \
      ~{true="--output" false="" output_file_plot} \
      ~{true="--conditions" false="" conditions} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  parameter_meta {
    bin_detect: "Bindetect_results.txt file from BINDetect run"
    tfs: "Text file containing names of TFs to show in plot (one per line)"
    output_file_plot: "Output file for plot (default: bindetect_changes.pdf)"
    conditions: "[ [ ...]]  Ordered list of conditions to show (default: conditions are ordered as within the bindetect file)"
    verbosity: "Level of output logging (0: silent, 1: errors/warnings, 2: info, 3: stats, 4: debug, 5: spam) (default: 3)"
  }
}