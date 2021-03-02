version 1.0

task PlotTreeGraphlanpy {
  input {
    String? ifn_tree
    String? colorized_metadata
    Int? fig_size
    Int? legend_marker_size
    Int? legend_font_size
    Float? legend_marker_edge_width
    Int? leaf_marker_size
    Float? leaf_marker_edge_width
    String? dpi
    String? figure_extension
    String? of_n_prefix
  }
  command <<<
    plot_tree_graphlan_py \
      ~{if defined(ifn_tree) then ("--ifn_tree " +  '"' + ifn_tree + '"') else ""} \
      ~{if defined(colorized_metadata) then ("--colorized_metadata " +  '"' + colorized_metadata + '"') else ""} \
      ~{if defined(fig_size) then ("--fig_size " +  '"' + fig_size + '"') else ""} \
      ~{if defined(legend_marker_size) then ("--legend_marker_size " +  '"' + legend_marker_size + '"') else ""} \
      ~{if defined(legend_font_size) then ("--legend_font_size " +  '"' + legend_font_size + '"') else ""} \
      ~{if defined(legend_marker_edge_width) then ("--legend_marker_edge_width " +  '"' + legend_marker_edge_width + '"') else ""} \
      ~{if defined(leaf_marker_size) then ("--leaf_marker_size " +  '"' + leaf_marker_size + '"') else ""} \
      ~{if defined(leaf_marker_edge_width) then ("--leaf_marker_edge_width " +  '"' + leaf_marker_edge_width + '"') else ""} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""} \
      ~{if defined(figure_extension) then ("--figure_extension " +  '"' + figure_extension + '"') else ""} \
      ~{if defined(of_n_prefix) then ("--ofn_prefix " +  '"' + of_n_prefix + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ifn_tree: "The input tree in newick format."
    colorized_metadata: "The metadata field to colorize. Default \\\"unset\\\"."
    fig_size: "The figure size. Default \\\"8\\\"."
    legend_marker_size: "The legend marker size. Default \\\"20\\\"."
    legend_font_size: "The legend font size. Default \\\"10\\\"."
    legend_marker_edge_width: "The legend marker edge width. Default \\\"0.2\\\"."
    leaf_marker_size: "The legend marker size. Default \\\"20\\\"."
    leaf_marker_edge_width: "The legend marker edge width. Default \\\"0.2\\\"."
    dpi: "The figure dpi."
    figure_extension: "The figure extension. Default \\\".png\\\"."
    of_n_prefix: "The prefix of output files.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}