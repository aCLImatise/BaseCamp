version 1.0

task PlotCladogrampy {
  input {
    String? clade_sep
    Int? max_lev
    Int? max_point_size
    Int? min_point_size
    String? point_edge_width
    String? siblings_connector_width
    String? parents_connector_width
    String? radial_start_lev
    String? labeled_start_lev
    String? labeled_stop_lev
    String? ab_rv_start_lev
    String? ab_rv_stop_lev
    String? expand_void_lev
    String? class_legend_vis
    String? colored_connector
    String? alpha
    String? title
    String? sub_clade
    Int? title_font_size
    String? right_space_prop
    String? left_space_prop
    Int? label_font_size
    String? background_color
    String? colored_labels
    Int? class_legend_font_size
    String? dpi
    File? format
    String? all_feats
    String input_file
    String output_file
  }
  command <<<
    plot_cladogram_py \
      ~{input_file} \
      ~{output_file} \
      ~{if defined(clade_sep) then ("--clade_sep " +  '"' + clade_sep + '"') else ""} \
      ~{if defined(max_lev) then ("--max_lev " +  '"' + max_lev + '"') else ""} \
      ~{if defined(max_point_size) then ("--max_point_size " +  '"' + max_point_size + '"') else ""} \
      ~{if defined(min_point_size) then ("--min_point_size " +  '"' + min_point_size + '"') else ""} \
      ~{if defined(point_edge_width) then ("--point_edge_width " +  '"' + point_edge_width + '"') else ""} \
      ~{if defined(siblings_connector_width) then ("--siblings_connector_width " +  '"' + siblings_connector_width + '"') else ""} \
      ~{if defined(parents_connector_width) then ("--parents_connector_width " +  '"' + parents_connector_width + '"') else ""} \
      ~{if defined(radial_start_lev) then ("--radial_start_lev " +  '"' + radial_start_lev + '"') else ""} \
      ~{if defined(labeled_start_lev) then ("--labeled_start_lev " +  '"' + labeled_start_lev + '"') else ""} \
      ~{if defined(labeled_stop_lev) then ("--labeled_stop_lev " +  '"' + labeled_stop_lev + '"') else ""} \
      ~{if defined(ab_rv_start_lev) then ("--abrv_start_lev " +  '"' + ab_rv_start_lev + '"') else ""} \
      ~{if defined(ab_rv_stop_lev) then ("--abrv_stop_lev " +  '"' + ab_rv_stop_lev + '"') else ""} \
      ~{if defined(expand_void_lev) then ("--expand_void_lev " +  '"' + expand_void_lev + '"') else ""} \
      ~{if defined(class_legend_vis) then ("--class_legend_vis " +  '"' + class_legend_vis + '"') else ""} \
      ~{if defined(colored_connector) then ("--colored_connector " +  '"' + colored_connector + '"') else ""} \
      ~{if defined(alpha) then ("--alpha " +  '"' + alpha + '"') else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""} \
      ~{if defined(sub_clade) then ("--sub_clade " +  '"' + sub_clade + '"') else ""} \
      ~{if defined(title_font_size) then ("--title_font_size " +  '"' + title_font_size + '"') else ""} \
      ~{if defined(right_space_prop) then ("--right_space_prop " +  '"' + right_space_prop + '"') else ""} \
      ~{if defined(left_space_prop) then ("--left_space_prop " +  '"' + left_space_prop + '"') else ""} \
      ~{if defined(label_font_size) then ("--label_font_size " +  '"' + label_font_size + '"') else ""} \
      ~{if defined(background_color) then ("--background_color " +  '"' + background_color + '"') else ""} \
      ~{if defined(colored_labels) then ("--colored_labels " +  '"' + colored_labels + '"') else ""} \
      ~{if defined(class_legend_font_size) then ("--class_legend_font_size " +  '"' + class_legend_font_size + '"') else ""} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(all_feats) then ("--all_feats " +  '"' + all_feats + '"') else ""}
  >>>
  parameter_meta {
    clade_sep: ""
    max_lev: ""
    max_point_size: ""
    min_point_size: ""
    point_edge_width: ""
    siblings_connector_width: ""
    parents_connector_width: ""
    radial_start_lev: ""
    labeled_start_lev: ""
    labeled_stop_lev: ""
    ab_rv_start_lev: ""
    ab_rv_stop_lev: ""
    expand_void_lev: ""
    class_legend_vis: ""
    colored_connector: ""
    alpha: ""
    title: ""
    sub_clade: ""
    title_font_size: ""
    right_space_prop: ""
    left_space_prop: ""
    label_font_size: ""
    background_color: "set the color of the background"
    colored_labels: "draw the label with class color (1) or in black (0)"
    class_legend_font_size: ""
    dpi: ""
    format: "the format for the output file"
    all_feats: ""
    input_file: "tab delimited input file"
    output_file: "the file for the output image"
  }
  output {
    File out_stdout = stdout()
    File out_format = "${in_format}"
  }
}