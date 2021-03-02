version 1.0

task Gct2gctx {
  input {
    File? filename
    File? output_file_path
    Boolean? verbose
    File? row_an_not_path
    File? col_an_not_path
  }
  command <<<
    gct2gctx \
      ~{if defined(filename) then ("-filename " +  '"' + filename + '"') else ""} \
      ~{if defined(output_file_path) then ("-output_filepath " +  '"' + output_file_path + '"') else ""} \
      ~{if (verbose) then "-verbose" else ""} \
      ~{if defined(row_an_not_path) then ("-row_annot_path " +  '"' + row_an_not_path + '"') else ""} \
      ~{if defined(col_an_not_path) then ("-col_annot_path " +  '"' + col_an_not_path + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    filename: ".gct file that you would like to convert to .gctx\\n(default: None)"
    output_file_path: "out path/name for output gctx file. Default is just to\\nmodify the extension (default: None)"
    verbose: "Whether to print a bunch of output. (default: False)"
    row_an_not_path: "Path to annotations file for rows (default: None)"
    col_an_not_path: "Path to annotations file for columns (default: None)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_path = "${in_output_file_path}"
  }
}