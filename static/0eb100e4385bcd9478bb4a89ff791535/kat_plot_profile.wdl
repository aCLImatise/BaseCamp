version 1.0

task KatPlotProfile {
  input {
    File? path_output_file
    File? output_type
    String? title
    String? x_label
    String? y_label
    Int? y_two_label
    String? x_max
    String? x_min
    String? y_max
    String? y_min
    Int? y_two_max
    String? width
    String? height
    String? index
    String? header
    String? dpi
    Boolean? verbose
    String sect_profile_file
    Int sect_profile_file_two
  }
  command <<<
    kat_plot_profile \
      ~{sect_profile_file} \
      ~{sect_profile_file_two} \
      ~{if defined(path_output_file) then ("--output " +  '"' + path_output_file + '"') else ""} \
      ~{if defined(output_type) then ("--output_type " +  '"' + output_type + '"') else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""} \
      ~{if defined(x_label) then ("--x_label " +  '"' + x_label + '"') else ""} \
      ~{if defined(y_label) then ("--y_label " +  '"' + y_label + '"') else ""} \
      ~{if defined(y_two_label) then ("--y2_label " +  '"' + y_two_label + '"') else ""} \
      ~{if defined(x_max) then ("--x_max " +  '"' + x_max + '"') else ""} \
      ~{if defined(x_min) then ("--x_min " +  '"' + x_min + '"') else ""} \
      ~{if defined(y_max) then ("--y_max " +  '"' + y_max + '"') else ""} \
      ~{if defined(y_min) then ("--y_min " +  '"' + y_min + '"') else ""} \
      ~{if defined(y_two_max) then ("--y2_max " +  '"' + y_two_max + '"') else ""} \
      ~{if defined(width) then ("--width " +  '"' + width + '"') else ""} \
      ~{if defined(height) then ("--height " +  '"' + height + '"') else ""} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(header) then ("--header " +  '"' + header + '"') else ""} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    path_output_file: "The path to the output file."
    output_type: "The plot file type to create (default is based on\\ngiven output name)."
    title: "Title for plot"
    x_label: "Label for x-axis"
    y_label: "Label for y-axis"
    y_two_label: "Label for second y-axis"
    x_max: "Maximum value for x-axis"
    x_min: "Minimum value for x-axis"
    y_max: "Maximum value for y-axis"
    y_min: "Minimum value for y-axis"
    y_two_max: "Maximum value for second y-axis"
    width: "Width of canvas"
    height: "Height of canvas"
    index: "Comma separate list of indexes of fasta entry to plot"
    header: "Name of fasta entry to plot (has priority over index)"
    dpi: "Resolution in dots per inch of output graphic."
    verbose: "Print extra information"
    sect_profile_file: "The input profile file from KAT sect"
    sect_profile_file_two: "The optional second input profile file from KAT sect"
  }
  output {
    File out_stdout = stdout()
    File out_path_output_file = "${in_path_output_file}"
    File out_output_type = "${in_output_type}"
  }
}