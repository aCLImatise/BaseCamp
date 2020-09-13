version 1.0

task Fuextract {
  input {
    Boolean? pattern
    Boolean? min_len
    Boolean? maxlen
    Boolean? list
    Boolean? column
    String? separator
    String input_file_dot_fa
    String note
    String example
    String that
  }
  command <<<
    fu_extract \
      ~{input_file_dot_fa} \
      ~{note} \
      ~{example} \
      ~{that} \
      ~{if (pattern) then "--pattern" else ""} \
      ~{if (min_len) then "--minlen" else ""} \
      ~{if (maxlen) then "--maxlen" else ""} \
      ~{if (list) then "--list" else ""} \
      ~{if (column) then "--column" else ""} \
      ~{if defined(separator) then ("--separator " +  '"' + separator + '"') else ""}
  >>>
  parameter_meta {
    pattern: "STRING"
    min_len: "INT"
    maxlen: "INT"
    list: "FILE"
    column: "INT (default: 1)"
    separator: "(default: \\\"\\t\\\")"
    input_file_dot_fa: ""
    note: ""
    example: ""
    that: ""
  }
  output {
    File out_stdout = stdout()
  }
}