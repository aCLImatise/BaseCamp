version 1.0

task AnnotateInexactHomology {
  input {
    Boolean? displays_options_specific
    Boolean? std_help
    Boolean? displays_options_and
    String program
    String? options_dot_dot_dot
  }
  command <<<
    AnnotateInexactHomology \
      ~{program} \
      ~{options_dot_dot_dot} \
      ~{if (displays_options_specific) then "-h" else ""} \
      ~{if (std_help) then "--stdhelp" else ""} \
      ~{if (displays_options_and) then "-H" else ""}
  >>>
  parameter_meta {
    displays_options_specific: "Displays options specific to this tool."
    std_help: ""
    displays_options_and: "Displays options specific to this tool AND options common to all Picard command line\\ntools."
    program: ""
    options_dot_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}