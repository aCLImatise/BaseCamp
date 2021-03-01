version 1.0

task TableFilterpy {
  input {
    Boolean? header
    Boolean? comments
    Boolean? force_header
    String? cols
    String expression
  }
  command <<<
    table_filter_py \
      ~{expression} \
      ~{if (header) then "--header" else ""} \
      ~{if (comments) then "--comments" else ""} \
      ~{if (force_header) then "--force-header" else ""} \
      ~{if defined(cols) then ("--cols " +  '"' + cols + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    header: "keep header in output"
    comments: "keep comments in output"
    force_header: "assume the first line is a header even if it does not\\nstart with \\\"#\\\""
    cols: "names or indexes of columns to keep"
    expression: ""
  }
  output {
    File out_stdout = stdout()
  }
}