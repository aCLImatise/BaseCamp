version 1.0

task SashimiPlot {
  input {
    String? plot_insert_len
    String? plot_bf_dist
    String? plot_event
    Boolean? no_posteriors
    String? plot_title
    String? plot_label
    String? output_dir
  }
  command <<<
    sashimi_plot \
      ~{if defined(plot_insert_len) then ("--plot-insert-len " +  '"' + plot_insert_len + '"') else ""} \
      ~{if defined(plot_bf_dist) then ("--plot-bf-dist " +  '"' + plot_bf_dist + '"') else ""} \
      ~{if defined(plot_event) then ("--plot-event " +  '"' + plot_event + '"') else ""} \
      ~{true="--no-posteriors" false="" no_posteriors} \
      ~{if defined(plot_title) then ("--plot-title " +  '"' + plot_title + '"') else ""} \
      ~{if defined(plot_label) then ("--plot-label " +  '"' + plot_label + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""}
  >>>
  parameter_meta {
    plot_insert_len: "Plot the insert length distribution from a given insert length (*.insert_len) filename. Second argument is a settings file name."
    plot_bf_dist: "Plot Bayes factor distributon. Takes the arguments: (1) Bayes factor filename (*.miso_bf) filename, (2) a settings filename."
    plot_event: "Plot read densities and MISO inferences for a given alternative event. Takes the arguments: (1) event name (i.e. the ID= of the event based on MISO gff3 annotation file, (2) directory where indexed GFF annotation is (output of index_gff.py), (3) path to plotting settings file."
    no_posteriors: "If given this argument, MISO posterior estimates are not plotted."
    plot_title: "Title of plot: a string that will be displayed at top of plot. Example: --plot-title \"My favorite gene\"."
    plot_label: "Plot label. If given, plot will be saved in the output directory as the plot label ending in the relevant extension, e.g. <plot_label>.pdf. Example: --plot- label my_gene"
    output_dir: "Output directory."
  }
}