version 1.0

task KatPlotSpectraMx {
  input {
    File? path_output_file
    File? output_type
    String? title
    String? x_label
    String? y_label
    String? x_min
    String? y_min
    String? x_max
    String? y_max
    String? width
    String? height
    Boolean? intersection
    String? list
    Int? exc_cut_off_done
    Int? exc_cut_off_d_two
    Boolean? x_log_scale
    Boolean? y_log_scale
    String? dpi
    Boolean? verbose
  }
  command <<<
    kat_plot_spectra_mx \
      ~{if defined(path_output_file) then ("--output " +  '"' + path_output_file + '"') else ""} \
      ~{if defined(output_type) then ("--output_type " +  '"' + output_type + '"') else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""} \
      ~{if defined(x_label) then ("--x_label " +  '"' + x_label + '"') else ""} \
      ~{if defined(y_label) then ("--y_label " +  '"' + y_label + '"') else ""} \
      ~{if defined(x_min) then ("--x_min " +  '"' + x_min + '"') else ""} \
      ~{if defined(y_min) then ("--y_min " +  '"' + y_min + '"') else ""} \
      ~{if defined(x_max) then ("--x_max " +  '"' + x_max + '"') else ""} \
      ~{if defined(y_max) then ("--y_max " +  '"' + y_max + '"') else ""} \
      ~{if defined(width) then ("--width " +  '"' + width + '"') else ""} \
      ~{if defined(height) then ("--height " +  '"' + height + '"') else ""} \
      ~{if (intersection) then "--intersection" else ""} \
      ~{if defined(list) then ("--list " +  '"' + list + '"') else ""} \
      ~{if defined(exc_cut_off_done) then ("--exc_cutoff_d1 " +  '"' + exc_cut_off_done + '"') else ""} \
      ~{if defined(exc_cut_off_d_two) then ("--exc_cutoff_d2 " +  '"' + exc_cut_off_d_two + '"') else ""} \
      ~{if (x_log_scale) then "--x_logscale" else ""} \
      ~{if (y_log_scale) then "--y_logscale" else ""} \
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
    x_min: "Minimum value for x-axis"
    y_min: "Minimum value for y-axis"
    x_max: "Maximum value for x-axis"
    y_max: "Maximum value for y-axis"
    width: "Width of canvas"
    height: "Height of canvas"
    intersection: "Activate intersection mode, which plots the shared and\\nexclusive content found in the matrix."
    list: "The list of columns or rows to select from the matrix\\n(overrides -i)"
    exc_cut_off_done: "If in intersection mode, the level at which content\\nfor dataset 1 is considered exclusive or shared"
    exc_cut_off_d_two: "If in intersection mode, the level at which content\\nfor dataset 2 is considered exclusive or shared"
    x_log_scale: "X-axis is logscale. Overrides x_min and x_max"
    y_log_scale: "Y-axis is logscale. Overrides y_min and y_max"
    dpi: "Resolution in dots per inch of output graphic."
    verbose: "Print extra information"
  }
  output {
    File out_stdout = stdout()
    File out_path_output_file = "${in_path_output_file}"
    File out_output_type = "${in_output_type}"
  }
}