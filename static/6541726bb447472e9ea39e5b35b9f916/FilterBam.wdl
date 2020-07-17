version 1.0

task FilterBam {
  input {
    String? default_g
    String? final_command_line
    String side_dot
    String stripped_dot
  }
  command <<<
    FilterBam \
      ~{side_dot} \
      ~{stripped_dot} \
      ~{if defined(default_g) then ("-m " +  '"' + default_g + '"') else ""} \
      ~{if defined(final_command_line) then ("-v " +  '"' + final_command_line + '"') else ""}
  >>>
  parameter_meta {
    default_g: "(default 4g)"
    final_command_line: "final command line before executing"
    side_dot: "Default value: null. This option may be specified 0 or more times. "
    stripped_dot: "Default value: null. This option may be specified 0 or more times. "
  }
}