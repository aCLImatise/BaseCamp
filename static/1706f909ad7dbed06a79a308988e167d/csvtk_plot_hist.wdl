version 1.0

task CsvtkPlotHist {
  input {
    Int? bins
    Int? color_index
    Boolean? percentiles
    Float? axis_width
    Int? chunk_size
    String? comment_char
    String? data_field
    String? delimiter
    String? format
    String? group_field
    Float? height
    Boolean? ignore_empty_row
    Boolean? ignore_illegal_row
    String? in_file_list
    Int? label_size
    Boolean? lazy_quotes
    Boolean? no_header_row
    Int? num_cpus
    String? out_delimiter
    String? out_file
    Boolean? out_tabs
    Boolean? tabs
    Float? tick_width
    String? title
    Int? title_size
    Float? width
    String? x_max
    String? x_min
    String? xlab
    String? y_max
    String? y_min
    String? ylab
    String? flags
  }
  command <<<
    csvtk plot hist \
      ~{flags} \
      ~{if defined(bins) then ("--bins " +  '"' + bins + '"') else ""} \
      ~{if defined(color_index) then ("--color-index " +  '"' + color_index + '"') else ""} \
      ~{true="--percentiles" false="" percentiles} \
      ~{if defined(axis_width) then ("--axis-width " +  '"' + axis_width + '"') else ""} \
      ~{if defined(chunk_size) then ("--chunk-size " +  '"' + chunk_size + '"') else ""} \
      ~{if defined(comment_char) then ("--comment-char " +  '"' + comment_char + '"') else ""} \
      ~{if defined(data_field) then ("--data-field " +  '"' + data_field + '"') else ""} \
      ~{if defined(delimiter) then ("--delimiter " +  '"' + delimiter + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(group_field) then ("--group-field " +  '"' + group_field + '"') else ""} \
      ~{if defined(height) then ("--height " +  '"' + height + '"') else ""} \
      ~{true="--ignore-empty-row" false="" ignore_empty_row} \
      ~{true="--ignore-illegal-row" false="" ignore_illegal_row} \
      ~{if defined(in_file_list) then ("--infile-list " +  '"' + in_file_list + '"') else ""} \
      ~{if defined(label_size) then ("--label-size " +  '"' + label_size + '"') else ""} \
      ~{true="--lazy-quotes" false="" lazy_quotes} \
      ~{true="--no-header-row" false="" no_header_row} \
      ~{if defined(num_cpus) then ("--num-cpus " +  '"' + num_cpus + '"') else ""} \
      ~{if defined(out_delimiter) then ("--out-delimiter " +  '"' + out_delimiter + '"') else ""} \
      ~{if defined(out_file) then ("--out-file " +  '"' + out_file + '"') else ""} \
      ~{true="--out-tabs" false="" out_tabs} \
      ~{true="--tabs" false="" tabs} \
      ~{if defined(tick_width) then ("--tick-width " +  '"' + tick_width + '"') else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""} \
      ~{if defined(title_size) then ("--title-size " +  '"' + title_size + '"') else ""} \
      ~{if defined(width) then ("--width " +  '"' + width + '"') else ""} \
      ~{if defined(x_max) then ("--x-max " +  '"' + x_max + '"') else ""} \
      ~{if defined(x_min) then ("--x-min " +  '"' + x_min + '"') else ""} \
      ~{if defined(xlab) then ("--xlab " +  '"' + xlab + '"') else ""} \
      ~{if defined(y_max) then ("--y-max " +  '"' + y_max + '"') else ""} \
      ~{if defined(y_min) then ("--y-min " +  '"' + y_min + '"') else ""} \
      ~{if defined(ylab) then ("--ylab " +  '"' + ylab + '"') else ""}
  >>>
  parameter_meta {
    bins: "number of bins (default 50)"
    color_index: "color index, 1-7 (default 1)"
    percentiles: "calculate percentiles"
    axis_width: "axis width (default 1.5)"
    chunk_size: "chunk size of CSV reader (default 50)"
    comment_char: "lines starting with commment-character will be ignored. if your header row starts with '#', please assign \"-C\" another rare symbol, e.g. '$' (default \"#\")"
    data_field: "column index or column name of data (default \"1\")"
    delimiter: "delimiting character of the input CSV file (default \",\")"
    format: "image format for stdout when flag -o/--out-file not given. available values: eps, jpg|jpeg, pdf, png, svg, and tif|tiff. (default \"png\")"
    group_field: "column index or column name of group"
    height: "Figure height (default 4.5)"
    ignore_empty_row: "ignore empty rows"
    ignore_illegal_row: "ignore illegal rows"
    in_file_list: "file of input files list (one file per line), if given, they are appended to files from cli arguments"
    label_size: "label font size (default 14)"
    lazy_quotes: "if given, a quote may appear in an unquoted field and a non-doubled quote may appear in a quoted field"
    no_header_row: "specifies that the input CSV file does not have header row"
    num_cpus: "number of CPUs to use (default value depends on your computer) (default 8)"
    out_delimiter: "delimiting character of the output CSV file, e.g., -D $'\t' for tab (default \",\")"
    out_file: "out file (\"-\" for stdout, suffix .gz for gzipped out) (default \"-\")"
    out_tabs: "specifies that the output is delimited with tabs. Overrides \"-D\""
    tabs: "specifies that the input CSV file is delimited with tabs. Overrides \"-d\" and \"-D\""
    tick_width: "axis tick width (default 1.5)"
    title: "Figure title"
    title_size: "title font size (default 16)"
    width: "Figure width (default 6)"
    x_max: "maximum value of X axis"
    x_min: "minimum value of X axis"
    xlab: "x label text"
    y_max: "maximum value of Y axis"
    y_min: "minimum value of Y axis"
    ylab: "y label text"
    flags: ""
  }
}