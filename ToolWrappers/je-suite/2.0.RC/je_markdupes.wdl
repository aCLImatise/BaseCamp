version 1.0

task JeMarkdupes {
  input {
    Boolean? std_help
    String times_dot
    String value_dot
  }
  command <<<
    je markdupes \
      ~{times_dot} \
      ~{value_dot} \
      ~{if (std_help) then "--stdhelp" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    std_help: "Displays options specific to this tool AND options common to all Picard command line\\ntools."
    times_dot: "SPLIT_CHAR=String"
    value_dot: "COMMENT=String"
  }
  output {
    File out_stdout = stdout()
  }
}