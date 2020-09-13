version 1.0

task TagBamWithReadSequenceExtended {
  input {
    Int? default_g
    String? final_command_line
    Boolean? displays_options_specific
    Boolean? std_help
    Boolean? displays_options_and
    String null_dot
    String threshold_dot
  }
  command <<<
    TagBamWithReadSequenceExtended \
      ~{null_dot} \
      ~{threshold_dot} \
      ~{if defined(default_g) then ("-m " +  '"' + default_g + '"') else ""} \
      ~{if defined(final_command_line) then ("-v " +  '"' + final_command_line + '"') else ""} \
      ~{if (displays_options_specific) then "-h" else ""} \
      ~{if (std_help) then "--stdhelp" else ""} \
      ~{if (displays_options_and) then "-H" else ""}
  >>>
  parameter_meta {
    default_g: "(default 4g)"
    final_command_line: "final command line before executing"
    displays_options_specific: "Displays options specific to this tool."
    std_help: ""
    displays_options_and: "Displays options specific to this tool AND options common to all Picard command line\\ntools."
    null_dot: "TAG_QUALITY=String            The tag for the barcode quality.  The number of bases that are below the quality"
    threshold_dot: "Default value: XQ. This option can be set to 'null' to clear the default"
  }
  output {
    File out_stdout = stdout()
  }
}