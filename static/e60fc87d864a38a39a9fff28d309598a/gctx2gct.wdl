version 1.0

task Gctx2gct {
  input {
    File? filename
    String? output_file_path
    Boolean? verbose
    String? row_an_not_path
    String? col_an_not_path
  }
  command <<<
    gctx2gct \
      ~{if defined(filename) then ("-filename " +  '"' + filename + '"') else ""} \
      ~{if defined(output_file_path) then ("-output_filepath " +  '"' + output_file_path + '"') else ""} \
      ~{true="-verbose" false="" verbose} \
      ~{if defined(row_an_not_path) then ("-row_annot_path " +  '"' + row_an_not_path + '"') else ""} \
      ~{if defined(col_an_not_path) then ("-col_annot_path " +  '"' + col_an_not_path + '"') else ""}
  >>>
  parameter_meta {
    filename: ".gctx file that you would like to converted to .gct (default: None)"
    output_file_path: "out path/name for output gct file. Default is just to modify the extension (default: None)"
    verbose: "Whether to print a bunch of output. (default: False)"
    row_an_not_path: "Path to annotations file for rows (default: None)"
    col_an_not_path: "Path to annotations file for columns (default: None)"
  }
}