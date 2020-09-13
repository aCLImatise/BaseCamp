version 1.0

task Novomethyl {
  input {
    Int? colheader_select_columns
    String ps
  }
  command <<<
    novomethyl \
      ~{ps} \
      ~{if defined(colheader_select_columns) then ("-o " +  '"' + colheader_select_columns + '"') else ""}
  >>>
  parameter_meta {
    colheader_select_columns: ",COL2=HEADER     Select columns for display"
    ps: ""
  }
  output {
    File out_stdout = stdout()
  }
}