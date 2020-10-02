version 1.0

task DigitalExpression {
  input {
    Int? default_g
    String? final_command_line
    Boolean? displays_options_specific
    String um_is_dot
    String cells
  }
  command <<<
    DigitalExpression \
      ~{um_is_dot} \
      ~{cells} \
      ~{if defined(default_g) then ("-m " +  '"' + default_g + '"') else ""} \
      ~{if defined(final_command_line) then ("-v " +  '"' + final_command_line + '"') else ""} \
      ~{if (displays_options_specific) then "-H" else ""}
  >>>
  parameter_meta {
    default_g: "(default 4g)"
    final_command_line: "final command line before executing"
    displays_options_specific: "Displays options specific to this tool AND options common to all Picard command line\\ntools."
    um_is_dot: "Cell/Gene pairings with 0 UMIs are not emitted.  Default value: null. "
    cells: "Default value: null. "
  }
  output {
    File out_stdout = stdout()
  }
}