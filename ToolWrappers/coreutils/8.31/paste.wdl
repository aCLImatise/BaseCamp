version 1.0

task Paste {
  input {
    String? delimiters
    Boolean? serial
    Boolean? zero_terminated
  }
  command <<<
    paste \
      ~{if defined(delimiters) then ("--delimiters " +  '"' + delimiters + '"') else ""} \
      ~{if (serial) then "--serial" else ""} \
      ~{if (zero_terminated) then "--zero-terminated" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    delimiters: "reuse characters from LIST instead of TABs"
    serial: "paste one file at a time instead of in parallel"
    zero_terminated: "line delimiter is NUL, not newline"
  }
  output {
    File out_stdout = stdout()
  }
}