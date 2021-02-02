version 1.0

task Tac {
  input {
    Boolean? before
    Boolean? regex
    String? separator
  }
  command <<<
    tac \
      ~{if (before) then "--before" else ""} \
      ~{if (regex) then "--regex" else ""} \
      ~{if defined(separator) then ("--separator " +  '"' + separator + '"') else ""}
  >>>
  parameter_meta {
    before: "attach the separator before instead of after"
    regex: "interpret the separator as a regular expression"
    separator: "use STRING as the separator instead of newline"
  }
  output {
    File out_stdout = stdout()
  }
}