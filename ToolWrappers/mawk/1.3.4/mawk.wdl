version 1.0

task Mawk {
  input {
    File? program_text_read
    String? sets_field_separator
    String? value_assigns_value
    String command_line_dot
  }
  command <<<
    mawk \
      ~{command_line_dot} \
      ~{if defined(program_text_read) then ("-f " +  '"' + program_text_read + '"') else ""} \
      ~{if defined(sets_field_separator) then ("-F " +  '"' + sets_field_separator + '"') else ""} \
      ~{if defined(value_assigns_value) then ("-v " +  '"' + value_assigns_value + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    program_text_read: "Program  text is read from file instead of from the"
    sets_field_separator: "sets the field separator, FS, to value."
    value_assigns_value: "=value     assigns value to program variable var."
    command_line_dot: "Multiple -f options are accepted."
  }
  output {
    File out_stdout = stdout()
  }
}