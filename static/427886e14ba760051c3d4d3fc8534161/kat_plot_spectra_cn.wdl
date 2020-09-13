version 1.0

task KatPlotSpectraCn {
  input {
    File? path_output_file
    File? output_type
    String? title
    String? x_label
    String? y_label
    String? x_max
    String? y_max
    String? width
    String? height
    Int? min_assembly_frequency
    Int? max_dup
    String? coverage_list
    Boolean? no_cumulative
    String? dpi
    Boolean? verbose
  }
  command <<<
    kat_plot_spectra_cn \
      ~{if defined(path_output_file) then ("--output " +  '"' + path_output_file + '"') else ""} \
      ~{if defined(output_type) then ("--output_type " +  '"' + output_type + '"') else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""} \
      ~{if defined(x_label) then ("--x_label " +  '"' + x_label + '"') else ""} \
      ~{if defined(y_label) then ("--y_label " +  '"' + y_label + '"') else ""} \
      ~{if defined(x_max) then ("--x_max " +  '"' + x_max + '"') else ""} \
      ~{if defined(y_max) then ("--y_max " +  '"' + y_max + '"') else ""} \
      ~{if defined(width) then ("--width " +  '"' + width + '"') else ""} \
      ~{if defined(height) then ("--height " +  '"' + height + '"') else ""} \
      ~{if defined(min_assembly_frequency) then ("--min_assembly_frequency " +  '"' + min_assembly_frequency + '"') else ""} \
      ~{if defined(max_dup) then ("--max_dup " +  '"' + max_dup + '"') else ""} \
      ~{if defined(coverage_list) then ("--coverage_list " +  '"' + coverage_list + '"') else ""} \
      ~{if (no_cumulative) then "--no_cumulative" else ""} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    path_output_file: "The path to the output file."
    output_type: "The plot file type to create (default is based on\\ngiven output name)."
    title: "Title for plot"
    x_label: "Label for x-axis"
    y_label: "Label for y-axis"
    x_max: "Maximum value for x-axis"
    y_max: "Maximum value for y-axis"
    width: "Width of canvas"
    height: "Height of canvas"
    min_assembly_frequency: "Display K-mers that appear less than n times in the\\ngenome"
    max_dup: "Maximum duplication level to show in plots"
    coverage_list: "Comma separated string listing coverage levels to show\\nin plot (overrides -i and -u)"
    no_cumulative: "Do not combine remaining copy numbers in matrix"
    dpi: "Resolution in dots per inch of output graphic."
    verbose: "Print extra information"
  }
  output {
    File out_stdout = stdout()
    File out_path_output_file = "${in_path_output_file}"
    File out_output_type = "${in_output_type}"
  }
}