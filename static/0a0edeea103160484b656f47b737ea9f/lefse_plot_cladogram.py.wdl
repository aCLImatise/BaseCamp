version 1.0

task LefseplotCladogrampy {
  input {
    String? siblings_connector_width
    String? colored_labels
    File? class_legend_font_size
    String input_file
    String output_file
  }
  command <<<
    lefse_plot_cladogram_py \
      ~{input_file} \
      ~{output_file} \
      ~{if defined(siblings_connector_width) then ("--siblings_connector_width " +  '"' + siblings_connector_width + '"') else ""} \
      ~{if defined(colored_labels) then ("--colored_labels " +  '"' + colored_labels + '"') else ""} \
      ~{if defined(class_legend_font_size) then ("--class_legend_font_size " +  '"' + class_legend_font_size + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    siblings_connector_width: "set the color of the background"
    colored_labels: "draw the label with class color (1) or in black (0)"
    class_legend_font_size: "the format for the output file"
    input_file: "tab delimited input file"
    output_file: "the file for the output image"
  }
  output {
    File out_stdout = stdout()
    File out_class_legend_font_size = "${in_class_legend_font_size}"
  }
}