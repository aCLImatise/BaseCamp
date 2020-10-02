version 1.0

task GeneratePonBedpe {
  input {
    Boolean? displays_options_specific
    String value_dot
  }
  command <<<
    GeneratePonBedpe \
      ~{value_dot} \
      ~{if (displays_options_specific) then "-H" else ""}
  >>>
  parameter_meta {
    displays_options_specific: "Displays options specific to this tool AND options common to all Picard command line\\ntools."
    value_dot: "INCLUDE_IMPRECISE_CALLS=Boolean"
  }
  output {
    File out_stdout = stdout()
  }
}