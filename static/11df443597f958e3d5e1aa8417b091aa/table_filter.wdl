version 1.0

task TableFilter.py {
  input {
    Boolean? header
    Boolean? comments
    Boolean? force_header
    String? cols
    String expression
  }
  command <<<
    table_filter.py \
      ~{expression} \
      ~{true="--header" false="" header} \
      ~{true="--comments" false="" comments} \
      ~{true="--force-header" false="" force_header} \
      ~{if defined(cols) then ("--cols " +  '"' + cols + '"') else ""}
  >>>
  parameter_meta {
    header: "keep header in output"
    comments: "keep comments in output"
    force_header: "assume the first line is a header even if it does not start with \"#\""
    cols: "names or indexes of columns to keep"
    expression: ""
  }
}