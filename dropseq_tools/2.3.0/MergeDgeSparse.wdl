version 1.0

task MergeDgeSparse {
  input {
    String? default_g
    String? final_command_line
    String mechanisms_dot
  }
  command <<<
    MergeDgeSparse \
      ~{mechanisms_dot} \
      ~{if defined(default_g) then ("-m " +  '"' + default_g + '"') else ""} \
      ~{if defined(final_command_line) then ("-v " +  '"' + final_command_line + '"') else ""}
  >>>
  parameter_meta {
    default_g: "(default 4g)"
    final_command_line: "final command line before executing"
    mechanisms_dot: "Default value: null. "
  }
}