version 1.0

task CompareDropSeqAlignments {
  input {
    Int? default_g
    String? final_command_line
    Boolean? std_help
    String value_dot
  }
  command <<<
    CompareDropSeqAlignments \
      ~{value_dot} \
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
    value_dot: "READ_QUALITY=Integer          The map quality for a read to be considered uniquely mapped.  Default value: 10. This"
  }
  output {
    File out_stdout = stdout()
  }
}