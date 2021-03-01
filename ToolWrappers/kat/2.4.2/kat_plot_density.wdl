version 1.0

task KatPlotDensity {
  input {
    File? path_output_file
    File? output_type
    String? title
    String? x_label
    String? y_label
    String? z_label
    String? x_max
    String? y_max
    String? z_max
    String? width
    String? height
    String? not_raster_is_ed
    String? dpi
    Boolean? verbose
  }
  command <<<
    kat_plot_density \
      ~{if defined(path_output_file) then ("--output " +  '"' + path_output_file + '"') else ""} \
      ~{if defined(output_type) then ("--output_type " +  '"' + output_type + '"') else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""} \
      ~{if defined(x_label) then ("--x_label " +  '"' + x_label + '"') else ""} \
      ~{if defined(y_label) then ("--y_label " +  '"' + y_label + '"') else ""} \
      ~{if defined(z_label) then ("--z_label " +  '"' + z_label + '"') else ""} \
      ~{if defined(x_max) then ("--x_max " +  '"' + x_max + '"') else ""} \
      ~{if defined(y_max) then ("--y_max " +  '"' + y_max + '"') else ""} \
      ~{if defined(z_max) then ("--z_max " +  '"' + z_max + '"') else ""} \
      ~{if defined(width) then ("--width " +  '"' + width + '"') else ""} \
      ~{if defined(height) then ("--height " +  '"' + height + '"') else ""} \
      ~{if defined(not_raster_is_ed) then ("--not_rasterised " +  '"' + not_raster_is_ed + '"') else ""} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    path_output_file: "The path to the output file."
    output_type: "The plot file type to create (default is based on\\ngiven output name)."
    title: "Title for plot"
    x_label: "Label for x-axis"
    y_label: "Label for y-axis"
    z_label: "Label for z-axis"
    x_max: "Maximum value for x-axis"
    y_max: "Maximum value for y-axis"
    z_max: "Maximum value for z-axis"
    width: "Width of canvas"
    height: "Height of canvas"
    not_raster_is_ed: "Don't rasterise graphics (slower)."
    dpi: "Resolution in dots per inch of output graphic."
    verbose: "Print extra information"
  }
  output {
    File out_stdout = stdout()
    File out_path_output_file = "${in_path_output_file}"
    File out_output_type = "${in_output_type}"
  }
}