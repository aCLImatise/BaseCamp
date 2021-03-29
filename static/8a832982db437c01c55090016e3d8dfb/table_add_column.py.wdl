version 1.0

task TableAddColumnpy {
  input {
    Boolean? header
    Boolean? comments
    String expression
    String colname
  }
  command <<<
    table_add_column_py \
      ~{expression} \
      ~{colname} \
      ~{if (header) then "--header" else ""} \
      ~{if (comments) then "--comments" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bx-python:0.8.11--py36h5e0341f_0"
  }
  parameter_meta {
    header: "keep header in output"
    comments: "keep comments in output"
    expression: ""
    colname: ""
  }
  output {
    File out_stdout = stdout()
  }
}