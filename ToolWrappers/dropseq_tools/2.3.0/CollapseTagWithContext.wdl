version 1.0

task CollapseTagWithContext {
  input {
    Int? default_g
    String? final_command_line
    Boolean? displays_options_specific
    String outtagstring_output_tag
    String counts_dot
    String mutationalcollapseboolean_instead_using
    String edit_distance_dot
  }
  command <<<
    CollapseTagWithContext \
      ~{outtagstring_output_tag} \
      ~{counts_dot} \
      ~{mutationalcollapseboolean_instead_using} \
      ~{edit_distance_dot} \
      ~{if defined(default_g) then ("-m " +  '"' + default_g + '"') else ""} \
      ~{if defined(final_command_line) then ("-v " +  '"' + final_command_line + '"') else ""} \
      ~{if (displays_options_specific) then "-H" else ""}
  >>>
  parameter_meta {
    default_g: "(default 4g)"
    final_command_line: "final command line before executing"
    displays_options_specific: "Displays options specific to this tool AND options common to all Picard command line\\ntools."
    outtagstring_output_tag: "OUT_TAG=String                The output tag for the newly collapsed tag values  Required. "
    counts_dot: "For example, if your context tags were cell and gene and you were collapsing UMI"
    mutationalcollapseboolean_instead_using: "MUTATIONAL_COLLAPSE=Boolean   Instead of using the default fixed edit distance, use a mutational collapse strategy.  For"
    edit_distance_dot: "Default value: false. This option can be set to 'null' to clear the"
  }
  output {
    File out_stdout = stdout()
  }
}