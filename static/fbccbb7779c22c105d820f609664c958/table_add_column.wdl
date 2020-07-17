version 1.0

task TableAddColumn.py {
  input {
    Boolean? header
    Boolean? comments
    String expression
    String colname
  }
  command <<<
    table_add_column.py \
      ~{expression} \
      ~{colname} \
      ~{true="--header" false="" header} \
      ~{true="--comments" false="" comments}
  >>>
  parameter_meta {
    header: "keep header in output"
    comments: "keep comments in output"
    expression: ""
    colname: ""
  }
}