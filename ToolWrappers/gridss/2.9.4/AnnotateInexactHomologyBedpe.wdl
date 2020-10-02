version 1.0

task AnnotateInexactHomologyBedpe {
  input {
    Boolean? displays_options_specific
    String required_dot
    String value_dot
  }
  command <<<
    AnnotateInexactHomologyBedpe \
      ~{required_dot} \
      ~{value_dot} \
      ~{if (displays_options_specific) then "-H" else ""}
  >>>
  parameter_meta {
    displays_options_specific: "Displays options specific to this tool AND options common to all Picard command line\\ntools."
    required_dot: "DISTANCE=Integer"
    value_dot: "UNTEMPLATED_SEQUENCE_COLUMN=Integer"
  }
  output {
    File out_stdout = stdout()
  }
}