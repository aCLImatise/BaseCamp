version 1.0

task Showtable {
  input {
    String? format
    Boolean? more
    Boolean? info
    Boolean? stats
    Int? max_lines
    Int? max_width
    Boolean? hide_unit
    Boolean? show_d_type
    String? delimiter
    String? hdu
    File? path
    String? table_id
    File filename
  }
  command <<<
    showtable \
      ~{filename} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if (more) then "--more" else ""} \
      ~{if (info) then "--info" else ""} \
      ~{if (stats) then "--stats" else ""} \
      ~{if defined(max_lines) then ("--max-lines " +  '"' + max_lines + '"') else ""} \
      ~{if defined(max_width) then ("--max-width " +  '"' + max_width + '"') else ""} \
      ~{if (hide_unit) then "--hide-unit" else ""} \
      ~{if (show_d_type) then "--show-dtype" else ""} \
      ~{if defined(delimiter) then ("--delimiter " +  '"' + delimiter + '"') else ""} \
      ~{if defined(hdu) then ("--hdu " +  '"' + hdu + '"') else ""} \
      ~{if defined(path) then ("--path " +  '"' + path + '"') else ""} \
      ~{if defined(table_id) then ("--table-id " +  '"' + table_id + '"') else ""}
  >>>
  parameter_meta {
    format: "input table format, should be specified if it cannot\\nbe automatically detected"
    more: "use the pager mode from Table.more"
    info: "show information about the table columns"
    stats: "show statistics about the table columns"
    max_lines: "maximum number of lines in table output\\n(default=screen length, -1 for no limit)"
    max_width: "maximum width in table output (default=screen width,\\n-1 for no limit)"
    hide_unit: "hide the header row for unit (which is shown only if\\none or more columns has a unit)"
    show_d_type: "include a header row for column dtypes"
    delimiter: "column delimiter string"
    hdu: "name of the HDU to show"
    path: "the path from which to read the table"
    table_id: "the table to read in"
    filename: "path to one or more files"
  }
  output {
    File out_stdout = stdout()
  }
}