version 1.0

task PauvreCustommargin {
  input {
    Boolean? quiet
    String? dpi
    Array[String] file_form
    String? input_file
    String? x_col
    String? y_col
    Boolean? no_transparent
    Boolean? no_timestamp
    String? output_base_name
    String? plot_max_y
    String? plot_max_x
    String? plot_min_y
    String? plot_min_x
    Boolean? square
    String? title
    String? y_bin
    String? x_bin
    Boolean? add_y_axes
  }
  command <<<
    pauvre custommargin \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""} \
      ~{if defined(file_form) then ("--fileform " +  '"' + file_form + '"') else ""} \
      ~{if defined(input_file) then ("--input_file " +  '"' + input_file + '"') else ""} \
      ~{if defined(x_col) then ("--xcol " +  '"' + x_col + '"') else ""} \
      ~{if defined(y_col) then ("--ycol " +  '"' + y_col + '"') else ""} \
      ~{true="--no_transparent" false="" no_transparent} \
      ~{true="--no_timestamp" false="" no_timestamp} \
      ~{if defined(output_base_name) then ("--output_base_name " +  '"' + output_base_name + '"') else ""} \
      ~{if defined(plot_max_y) then ("--plot_max_y " +  '"' + plot_max_y + '"') else ""} \
      ~{if defined(plot_max_x) then ("--plot_max_x " +  '"' + plot_max_x + '"') else ""} \
      ~{if defined(plot_min_y) then ("--plot_min_y " +  '"' + plot_min_y + '"') else ""} \
      ~{if defined(plot_min_x) then ("--plot_min_x " +  '"' + plot_min_x + '"') else ""} \
      ~{true="--square" false="" square} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""} \
      ~{if defined(y_bin) then ("--ybin " +  '"' + y_bin + '"') else ""} \
      ~{if defined(x_bin) then ("--xbin " +  '"' + x_bin + '"') else ""} \
      ~{true="--add-yaxes" false="" add_y_axes}
  >>>
  parameter_meta {
    quiet: "Do not output warnings to stderr"
    dpi: "Change the dpi from the default 600 if you need it higher"
    file_form: "Which output format would you like? Def.=png"
    input_file: "A tab-separated file with a header row of column names."
    x_col: "The column name of the data to plot on the x-axis"
    y_col: "The column name of the data to plot on the y-axis"
    no_transparent: "Specify this option if you don't want a transparent background. Default is on."
    no_timestamp: "Turn off time stamps in the filename output."
    output_base_name: "Specify a base name for the output file(s). The input file base name is the default."
    plot_max_y: "Sets the maximum viewing area in the length dimension."
    plot_max_x: "Sets the maximum viewing area in the quality dimension."
    plot_min_y: "Sets the minimum viewing area in the length dimension. Default value = 0"
    plot_min_x: "Sets the minimum viewing area in the quality dimension. Default value = 0"
    square: "changes the hexmap into a square map quantized by ints."
    title: "This sets the title for the whole plot. Use --title \"Crustacean's DNA read quality\" if you need single quote or apostrophe inside title."
    y_bin: "This sets the bin size to use for length."
    x_bin: "This sets the bin size to use for quality"
    add_y_axes: "Add Y-axes to both marginal histograms."
  }
}