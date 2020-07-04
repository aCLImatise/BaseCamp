version 1.0

task KatPlotCold {
  input {
    String? path_output_file
    String? output_type
    String? title
    String? y_max
    String? width
    String? height
    String? dpi
    Boolean? verbose
    String stats_file
  }
  command <<<
    kat_plot_cold \
      ~{stats_file} \
      ~{if defined(path_output_file) then ("--output " +  '"' + path_output_file + '"') else ""} \
      ~{if defined(output_type) then ("--output_type " +  '"' + output_type + '"') else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""} \
      ~{if defined(y_max) then ("--y_max " +  '"' + y_max + '"') else ""} \
      ~{if defined(width) then ("--width " +  '"' + width + '"') else ""} \
      ~{if defined(height) then ("--height " +  '"' + height + '"') else ""} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    path_output_file: "The path to the output file."
    output_type: "The plot file type to create (default is based on given output name)."
    title: "Title for plot"
    y_max: "Maximum value for y-axis"
    width: "Width of canvas"
    height: "Height of canvas"
    dpi: "Resolution in dots per inch of output graphic."
    verbose: "Print extra information"
    stats_file: "The stats file produced by 'kat cold'"
  }
}