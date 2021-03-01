version 1.0

task Cgview {
  input {
    Int? specifies_label_font_size
    Int? specifies_base_center
    Int? specifies_legend_font_size
    Float? specifies_tick_density
    Boolean? embed_vectorbased_text
    Boolean? exclude_svg_output
    String? format_png_svg
    File? html_file_create
    Int? the_height_map
    File? input_file_parse
    Boolean? draw_labels_inside
    Int? width_external_legend
    File? image_file_create
    File? path_image_option
    Boolean? whether_remove_legends
    Boolean? whether_remove_labels
    Directory? directory_receive_series
    Boolean? reference_external_stylesheet
    Boolean? reference_overlibjs_html
    Int? specifies_ruler_font_size
    Int? the_width_map
    String? comma_separated_values
    String? the_factor_zoom
    String? jar
    String java
  }
  command <<<
    cgview \
      ~{java} \
      ~{if defined(specifies_label_font_size) then ("-A " +  '"' + specifies_label_font_size + '"') else ""} \
      ~{if defined(specifies_base_center) then ("-c " +  '"' + specifies_base_center + '"') else ""} \
      ~{if defined(specifies_legend_font_size) then ("-D " +  '"' + specifies_legend_font_size + '"') else ""} \
      ~{if defined(specifies_tick_density) then ("-d " +  '"' + specifies_tick_density + '"') else ""} \
      ~{if defined(embed_vectorbased_text) then ("-E " +  '"' + embed_vectorbased_text + '"') else ""} \
      ~{if defined(exclude_svg_output) then ("-e " +  '"' + exclude_svg_output + '"') else ""} \
      ~{if defined(format_png_svg) then ("-f " +  '"' + format_png_svg + '"') else ""} \
      ~{if defined(html_file_create) then ("-h " +  '"' + html_file_create + '"') else ""} \
      ~{if defined(the_height_map) then ("-H " +  '"' + the_height_map + '"') else ""} \
      ~{if defined(input_file_parse) then ("-i " +  '"' + input_file_parse + '"') else ""} \
      ~{if defined(draw_labels_inside) then ("-I " +  '"' + draw_labels_inside + '"') else ""} \
      ~{if defined(width_external_legend) then ("-L " +  '"' + width_external_legend + '"') else ""} \
      ~{if defined(image_file_create) then ("-o " +  '"' + image_file_create + '"') else ""} \
      ~{if defined(path_image_option) then ("-p " +  '"' + path_image_option + '"') else ""} \
      ~{if defined(whether_remove_legends) then ("-r " +  '"' + whether_remove_legends + '"') else ""} \
      ~{if defined(whether_remove_labels) then ("-R " +  '"' + whether_remove_labels + '"') else ""} \
      ~{if defined(directory_receive_series) then ("-s " +  '"' + directory_receive_series + '"') else ""} \
      ~{if defined(reference_external_stylesheet) then ("-S " +  '"' + reference_external_stylesheet + '"') else ""} \
      ~{if defined(reference_overlibjs_html) then ("-u " +  '"' + reference_overlibjs_html + '"') else ""} \
      ~{if defined(specifies_ruler_font_size) then ("-U " +  '"' + specifies_ruler_font_size + '"') else ""} \
      ~{if defined(the_width_map) then ("-W " +  '"' + the_width_map + '"') else ""} \
      ~{if defined(comma_separated_values) then ("-x " +  '"' + comma_separated_values + '"') else ""} \
      ~{if defined(the_factor_zoom) then ("-z " +  '"' + the_factor_zoom + '"') else ""} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    specifies_label_font_size: "Specifies a label font size."
    specifies_base_center: "Specifies the base to center on when zooming."
    specifies_legend_font_size: "Specifies a legend font size."
    specifies_tick_density: "Specifies tick density, between 0 and 1.0. Default is 1.0."
    embed_vectorbased_text: "Whether or not to embed vector-based text in SVG output."
    exclude_svg_output: "Whether or not to exclude SVG output from image series."
    format_png_svg: "The format of the output: PNG, JPG, SVG, or SVGZ."
    html_file_create: "HTML file to create."
    the_height_map: "The height of the map."
    input_file_parse: "The input file to parse."
    draw_labels_inside: "Whether or not to draw labels on the inside of the backbone circle."
    width_external_legend: "The width of an external legend."
    image_file_create: "The image file to create."
    path_image_option: "The path to the image file in the HTML file created using the -h option."
    whether_remove_legends: "Whether or not to remove legends."
    whether_remove_labels: "Whether or not to remove labels."
    directory_receive_series: "Directory to receive an image series."
    reference_external_stylesheet: "Whether or not to reference external stylesheet in HTML output."
    reference_overlibjs_html: "Whether or not to reference overlib.js in HTML output."
    specifies_ruler_font_size: "Specifies a sequence ruler font size."
    the_width_map: "The width of the map."
    comma_separated_values: "Comma separated zoom values for image series."
    the_factor_zoom: "The factor to zoom in by."
    jar: ""
    java: ""
  }
  output {
    File out_stdout = stdout()
  }
}