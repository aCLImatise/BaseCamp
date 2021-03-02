version 1.0

task FilterBam {
  input {
    Int? default_g
    String? final_command_line
    Boolean? std_help
    String minimummappingqualityinteger
    String side_dot
    String times_dot
    String striprefprefixstring_edit_names
    String stripped_dot
  }
  command <<<
    FilterBam \
      ~{minimummappingqualityinteger} \
      ~{side_dot} \
      ~{times_dot} \
      ~{striprefprefixstring_edit_names} \
      ~{stripped_dot} \
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
    minimummappingqualityinteger: "MINIMUM_MAPPING_QUALITY=Integer"
    side_dot: "Default value: null. This option may be specified 0 or more times. "
    times_dot: "REF_HARD_MATCHED_RETAINED=String"
    striprefprefixstring_edit_names: "STRIP_REF_PREFIX=String       Edit contig names so that a contig that starts with one of these prefixes has the prefix"
    stripped_dot: "Default value: null. This option may be specified 0 or more times. "
  }
  output {
    File out_stdout = stdout()
  }
}