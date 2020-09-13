version 1.0

task Maketable {
  input {
    Int? cols
    Int? rows
  }
  command <<<
    make_table \
      ~{if defined(cols) then ("-cols " +  '"' + cols + '"') else ""} \
      ~{if defined(rows) then ("-rows " +  '"' + rows + '"') else ""}
  >>>
  parameter_meta {
    cols: ""
    rows: ""
  }
  output {
    File out_stdout = stdout()
  }
}