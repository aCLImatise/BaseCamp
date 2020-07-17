version 1.0

task MakeTable {
  input {
    Int? rows
    Int? cols
  }
  command <<<
    make-table \
      ~{if defined(rows) then ("-rows " +  '"' + rows + '"') else ""} \
      ~{if defined(cols) then ("-cols " +  '"' + cols + '"') else ""}
  >>>
  parameter_meta {
    rows: ""
    cols: ""
  }
}