version 1.0

task EditgffTable {
  input {
    String? verbose
    String? attribute
    Boolean? only_edited
    Int? skip_rows
    String? separator
    File? comment
    File? table_file
    Int? key_index
    Int? attr_index
    String? input_file
    String? output_file
  }
  command <<<
    edit_gff table \
      ~{input_file} \
      ~{output_file} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(attribute) then ("--attribute " +  '"' + attribute + '"') else ""} \
      ~{if (only_edited) then "--only-edited" else ""} \
      ~{if defined(skip_rows) then ("--skip-rows " +  '"' + skip_rows + '"') else ""} \
      ~{if defined(separator) then ("--separator " +  '"' + separator + '"') else ""} \
      ~{if defined(comment) then ("--comment " +  '"' + comment + '"') else ""} \
      ~{if defined(table_file) then ("--table-file " +  '"' + table_file + '"') else ""} \
      ~{if defined(key_index) then ("--key-index " +  '"' + key_index + '"') else ""} \
      ~{if defined(attr_index) then ("--attr-index " +  '"' + attr_index + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0"
  }
  parameter_meta {
    verbose: "Attribute used to search the table defaults to\\n`uid`"
    attribute: "Attribute to add/change  [required]"
    only_edited: "Only output edited annotations"
    skip_rows: "Number of rows to skip at the start of the file"
    separator: "Fields separator, default to `TAB`"
    comment: "Characters for comments in file (eg '#').\\ndefaults to None"
    table_file: "[required]"
    key_index: "Which field in the table is the key value\\n[default: 0]"
    attr_index: "Which field in the table is the attribute value\\n[default: 1]"
    input_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}