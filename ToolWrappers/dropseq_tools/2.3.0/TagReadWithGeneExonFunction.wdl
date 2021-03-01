version 1.0

task TagReadWithGeneExonFunction {
  input {
    Int? default_g
    String? final_command_line
    Boolean? std_help
    String value_dot
    String required_dot
  }
  command <<<
    TagReadWithGeneExonFunction \
      ~{value_dot} \
      ~{required_dot} \
      ~{if defined(default_g) then ("-m " +  '"' + default_g + '"') else ""} \
      ~{if defined(final_command_line) then ("-v " +  '"' + final_command_line + '"') else ""} \
      ~{if (std_help) then "--stdhelp" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    default_g: "(default 4g)"
    final_command_line: "final command line before executing"
    std_help: "Displays options specific to this tool AND options common to all Picard command line\\ntools."
    value_dot: "FUNCTION_TAG=String           The functional annotation for the read  Default value: XF. This option can be set to"
    required_dot: "USE_STRAND_INFO=Boolean       Use strand info to determine what gene to assign the read to.  If this is on, reads can be"
  }
  output {
    File out_stdout = stdout()
  }
}