version 1.0

task DigitalExpression {
  input {
    String? default_g
    String? final_command_line
    String um_is_dot
    String cells
  }
  command <<<
    DigitalExpression \
      ~{um_is_dot} \
      ~{cells} \
      ~{if defined(default_g) then ("-m " +  '"' + default_g + '"') else ""} \
      ~{if defined(final_command_line) then ("-v " +  '"' + final_command_line + '"') else ""}
  >>>
  parameter_meta {
    default_g: "(default 4g)"
    final_command_line: "final command line before executing"
    um_is_dot: "Cell/Gene pairings with 0 UMIs are not emitted.  Default value: null. "
    cells: "Default value: null. "
  }
}