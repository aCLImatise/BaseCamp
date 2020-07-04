version 1.0

task Gct2gctx {
  input {
    File? filename
    String? output_file_path
    Boolean? verbose
    String? row_an_not_path
    String? col_an_not_path
  }
  command <<<
    gct2gctx \
      ~{if defined(filename) then ("-filename " +  '"' + filename + '"') else ""} \
      ~{if defined(output_file_path) then ("-output_filepath " +  '"' + output_file_path + '"') else ""} \
      ~{true="-verbose" false="" verbose} \
      ~{if defined(row_an_not_path) then ("-row_annot_path " +  '"' + row_an_not_path + '"') else ""} \
      ~{if defined(col_an_not_path) then ("-col_annot_path " +  '"' + col_an_not_path + '"') else ""}
  >>>
  parameter_meta {
    filename: ".gct file that you would like to convert to .gctx (default: None)"
    output_file_path: "out path/name for output gctx file. Default is just to modify the extension (default: None)"
    verbose: "Whether to print a bunch of output. (default: False)"
    row_an_not_path: "Path to annotations file for rows (default: None)"
    col_an_not_path: "Path to annotations file for columns (default: None)"
  }
}