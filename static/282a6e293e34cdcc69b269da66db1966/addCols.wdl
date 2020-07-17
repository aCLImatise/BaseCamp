version 1.0

task AddCols {
  input {
    String? max_cols
    File filename
  }
  command <<<
    addCols \
      ~{filename} \
      ~{if defined(max_cols) then ("-maxCols " +  '"' + max_cols + '"') else ""}
  >>>
  parameter_meta {
    max_cols: "- maximum number of colums (defaults to 16)"
    filename: ""
  }
}