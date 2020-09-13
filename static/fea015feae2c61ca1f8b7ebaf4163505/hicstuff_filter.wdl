version 1.0

task HicstuffFilter {
  input {
    File? fig_dir
    Boolean? interactive
    Boolean? plot
    String? prefix
    Int? thresholds
    String d_bed_file
    String path_filtered_file
  }
  command <<<
    hicstuff filter \
      ~{d_bed_file} \
      ~{path_filtered_file} \
      ~{if defined(fig_dir) then ("--figdir " +  '"' + fig_dir + '"') else ""} \
      ~{if (interactive) then "--interactive" else ""} \
      ~{if (plot) then "--plot" else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(thresholds) then ("--thresholds " +  '"' + thresholds + '"') else ""}
  >>>
  parameter_meta {
    fig_dir: "Path to the output figure directory.\\nBy default, the figure is only shown\\nbut not saved."
    interactive: "Interactively shows plots and asks\\nfor thresholds."
    plot: "Shows plots of library composition\\nand 3C events abundance."
    prefix: "If the library has a name, it will\\nbe shown on the figures."
    thresholds: "Manually defines integer values for\\nthe thresholds in the order\\n[uncut, loop]. Reads above those values\\nare kept.\\n"
    d_bed_file: "2D BED file containing coordinates of Hi-C interacting\\npairs, the index of their restriction fragment and their\\nstrands."
    path_filtered_file: "Path to the filtered file, in the same format as the input."
  }
  output {
    File out_stdout = stdout()
    File out_fig_dir = "${in_fig_dir}"
  }
}