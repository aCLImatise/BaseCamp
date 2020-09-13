version 1.0

task JeMarkdupes {
  input {
    Boolean? displays_options_specific
    Boolean? std_help
    Boolean? displays_options_and
    String times_dot
    String value_dot
  }
  command <<<
    je markdupes \
      ~{times_dot} \
      ~{value_dot} \
      ~{if (displays_options_specific) then "-h" else ""} \
      ~{if (std_help) then "--stdhelp" else ""} \
      ~{if (displays_options_and) then "-H" else ""}
  >>>
  parameter_meta {
    displays_options_specific: "Displays options specific to this tool."
    std_help: ""
    displays_options_and: "Displays options specific to this tool AND options common to all Picard command line\\ntools."
    times_dot: "SPLIT_CHAR=String"
    value_dot: "COMMENT=String"
  }
  output {
    File out_stdout = stdout()
  }
}