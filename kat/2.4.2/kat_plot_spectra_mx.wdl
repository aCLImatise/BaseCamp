version 1.0

task KatPlotSpectraMx {
  input {
    String? path_output_file
    String? output_type
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
    String? exc_cut_off_done
    String? exc_cut_off_d_two
    Boolean? x_log_scale
    Boolean? y_log_scale
    String? dpi
    Boolean? verbose
    String matrix_file
  }
  command <<<
    kat_plot_spectra_mx \
      ~{matrix_file} \
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
      ~{true="--intersection" false="" intersection} \
      ~{if defined(list) then ("--list " +  '"' + list + '"') else ""} \
      ~{if defined(exc_cut_off_done) then ("--exc_cutoff_d1 " +  '"' + exc_cut_off_done + '"') else ""} \
      ~{if defined(exc_cut_off_d_two) then ("--exc_cutoff_d2 " +  '"' + exc_cut_off_d_two + '"') else ""} \
      ~{true="--x_logscale" false="" x_log_scale} \
      ~{true="--y_logscale" false="" y_log_scale} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    path_output_file: "The path to the output file."
    output_type: "The plot file type to create (default is based on given output name)."
    title: "Title for plot"
    x_label: "Label for x-axis"
    y_label: "Label for y-axis"
    x_min: "Minimum value for x-axis"
    y_min: "Minimum value for y-axis"
    x_max: "Maximum value for x-axis"
    y_max: "Maximum value for y-axis"
    width: "Width of canvas"
    height: "Height of canvas"
    intersection: "Activate intersection mode, which plots the shared and exclusive content found in the matrix."
    list: "The list of columns or rows to select from the matrix (overrides -i)"
    exc_cut_off_done: "If in intersection mode, the level at which content for dataset 1 is considered exclusive or shared"
    exc_cut_off_d_two: "If in intersection mode, the level at which content for dataset 2 is considered exclusive or shared"
    x_log_scale: "X-axis is logscale. Overrides x_min and x_max"
    y_log_scale: "Y-axis is logscale. Overrides y_min and y_max"
    dpi: "Resolution in dots per inch of output graphic."
    verbose: "Print extra information"
    matrix_file: "The input matrix file from KAT"
  }
}