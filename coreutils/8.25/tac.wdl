version 1.0

task Tac {
  input {
    String? before
    Int? regex
    String? separator
    String? option
  }
  command <<<
    tac \
      ~{option} \
      ~{if defined(before) then ("--before " +  '"' + before + '"') else ""} \
      ~{if defined(regex) then ("--regex " +  '"' + regex + '"') else ""} \
      ~{if defined(separator) then ("--separator " +  '"' + separator + '"') else ""}
  >>>
  parameter_meta {
    before: "the separator before instead of after"
    regex: "the separator as a regular expression"
    separator: "use STRING as the separator instead of newline"
    option: ""
  }
}