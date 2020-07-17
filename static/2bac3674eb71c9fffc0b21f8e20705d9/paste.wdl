version 1.0

task Paste {
  input {
    String? delimiters
    String? serial
    Boolean? zero_terminated
    String? option
  }
  command <<<
    paste \
      ~{option} \
      ~{if defined(delimiters) then ("--delimiters " +  '"' + delimiters + '"') else ""} \
      ~{if defined(serial) then ("--serial " +  '"' + serial + '"') else ""} \
      ~{true="--zero-terminated" false="" zero_terminated}
  >>>
  parameter_meta {
    delimiters: "reuse characters from LIST instead of TABs"
    serial: "one file at a time instead of in parallel"
    zero_terminated: "line delimiter is NUL, not newline"
    option: ""
  }
}