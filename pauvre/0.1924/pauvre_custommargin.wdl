version 1.0

task PauvreCustommargin {
  input {
    Boolean? quiet
    Int? dpi
    File? input_file
    String? x_col
    String? y_col
    Boolean? no_transparent
    File? no_timestamp
    File? output_base_name
    Int? plot_max_y
    String? plot_max_x
    Int? plot_min_y
    Int? plot_min_x
    Boolean? square
    Int? y_bin
    Int? x_bin
    Boolean? add_y_axes
    String higher
    String ints_dot
  }
  command <<<
    pauvre custommargin \
      ~{higher} \
      ~{ints_dot} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""} \
      ~{if defined(input_file) then ("--input_file " +  '"' + input_file + '"') else ""} \
      ~{if defined(x_col) then ("--xcol " +  '"' + x_col + '"') else ""} \
      ~{if defined(y_col) then ("--ycol " +  '"' + y_col + '"') else ""} \
      ~{if (no_transparent) then "--no_transparent" else ""} \
      ~{if (no_timestamp) then "--no_timestamp" else ""} \
      ~{if defined(output_base_name) then ("--output_base_name " +  '"' + output_base_name + '"') else ""} \
      ~{if defined(plot_max_y) then ("--plot_max_y " +  '"' + plot_max_y + '"') else ""} \
      ~{if defined(plot_max_x) then ("--plot_max_x " +  '"' + plot_max_x + '"') else ""} \
      ~{if defined(plot_min_y) then ("--plot_min_y " +  '"' + plot_min_y + '"') else ""} \
      ~{if defined(plot_min_x) then ("--plot_min_x " +  '"' + plot_min_x + '"') else ""} \
      ~{if (square) then "--square" else ""} \
      ~{if defined(y_bin) then ("--ybin " +  '"' + y_bin + '"') else ""} \
      ~{if defined(x_bin) then ("--xbin " +  '"' + x_bin + '"') else ""} \
      ~{if (add_y_axes) then "--add-yaxes" else ""}
  >>>
  parameter_meta {
    quiet: "Do not output warnings to stderr"
    dpi: "Change the dpi from the default 600 if you need it"
    input_file: "A tab-separated file with a header row of column\\nnames."
    x_col: "The column name of the data to plot on the x-axis"
    y_col: "The column name of the data to plot on the y-axis"
    no_transparent: "Specify this option if you don't want a transparent\\nbackground. Default is on."
    no_timestamp: "Turn off time stamps in the filename output."
    output_base_name: "Specify a base name for the output file(s). The input\\nfile base name is the default."
    plot_max_y: "Sets the maximum viewing area in the length dimension."
    plot_max_x: "Sets the maximum viewing area in the quality\\ndimension."
    plot_min_y: "Sets the minimum viewing area in the length dimension.\\nDefault value = 0"
    plot_min_x: "Sets the minimum viewing area in the quality\\ndimension. Default value = 0"
    square: "changes the hexmap into a square map quantized by"
    y_bin: "This sets the bin size to use for length."
    x_bin: "This sets the bin size to use for quality"
    add_y_axes: "Add Y-axes to both marginal histograms."
    higher: "--fileform STRING [STRING ...]"
    ints_dot: "-t TITLE, --title TITLE"
  }
  output {
    File out_stdout = stdout()
    File out_no_timestamp = "${in_no_timestamp}"
  }
}