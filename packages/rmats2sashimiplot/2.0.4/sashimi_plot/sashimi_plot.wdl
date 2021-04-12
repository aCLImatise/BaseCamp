version 1.0

task SashimiPlot {
  input {
    Int? plot_insert_len
    File? plot_bf_dist
    File? plot_event
    Boolean? no_posteriors
    String? plot_title
    Directory? plot_label
    Directory? output_dir
    String? group_info
  }
  command <<<
    sashimi_plot \
      ~{if defined(plot_insert_len) then ("--plot-insert-len " +  '"' + plot_insert_len + '"') else ""} \
      ~{if defined(plot_bf_dist) then ("--plot-bf-dist " +  '"' + plot_bf_dist + '"') else ""} \
      ~{if defined(plot_event) then ("--plot-event " +  '"' + plot_event + '"') else ""} \
      ~{if (no_posteriors) then "--no-posteriors" else ""} \
      ~{if defined(plot_title) then ("--plot-title " +  '"' + plot_title + '"') else ""} \
      ~{if defined(plot_label) then ("--plot-label " +  '"' + plot_label + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(group_info) then ("--group-info " +  '"' + group_info + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/rmats2sashimiplot:2.0.4--py39h6a678da_2"
  }
  parameter_meta {
    plot_insert_len: "Plot the insert length distribution from a given\\ninsert length (*.insert_len) filename. Second argument\\nis a settings file name."
    plot_bf_dist: "Plot Bayes factor distributon. Takes the arguments:\\n(1) Bayes factor filename (*.miso_bf) filename, (2) a\\nsettings filename."
    plot_event: "Plot read densities and MISO inferences for a given\\nalternative event. Takes the arguments: (1) event name\\n(i.e. the ID= of the event based on MISO gff3\\nannotation file, (2) directory where indexed GFF\\nannotation is (output of index_gff.py), (3) path to\\nplotting settings file."
    no_posteriors: "If given this argument, MISO posterior estimates are\\nnot plotted."
    plot_title: "Title of plot: a string that will be displayed at top\\nof plot. Example: --plot-title \\\"My favorite gene\\\"."
    plot_label: "Plot label. If given, plot will be saved in the output\\ndirectory as the plot label ending in the relevant\\nextension, e.g. <plot_label>.pdf. Example: --plot-\\nlabel my_gene"
    output_dir: "Output directory."
    group_info: "If there is the need to divide bam files into groups,\\nthen provided this parameter with the the group files'\\nname. Exemple: '--group-info gf.gf'\\n"
  }
  output {
    File out_stdout = stdout()
    File out_plot_event = "${in_plot_event}"
    Directory out_plot_label = "${in_plot_label}"
    Directory out_output_dir = "${in_output_dir}"
  }
}