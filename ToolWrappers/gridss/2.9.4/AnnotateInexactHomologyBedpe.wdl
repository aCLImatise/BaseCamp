version 1.0

task AnnotateInexactHomologyBedpe {
  input {
    Boolean? std_help
    String required_dot
    String value_dot
  }
  command <<<
    AnnotateInexactHomologyBedpe \
      ~{required_dot} \
      ~{value_dot} \
      ~{if (std_help) then "--stdhelp" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    std_help: "Displays options specific to this tool AND options common to all Picard command line\\ntools."
    required_dot: "DISTANCE=Integer"
    value_dot: "UNTEMPLATED_SEQUENCE_COLUMN=Integer"
  }
  output {
    File out_stdout = stdout()
  }
}