version 1.0

task NovolrcorrectorRead {
  input {
    Int? colheader_select_columns
    String ps
  }
  command <<<
    novolrcorrector Read \
      ~{ps} \
      ~{if defined(colheader_select_columns) then ("-o " +  '"' + colheader_select_columns + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    colheader_select_columns: ",COL2=HEADER     Select columns for display"
    ps: ""
  }
  output {
    File out_stdout = stdout()
  }
}