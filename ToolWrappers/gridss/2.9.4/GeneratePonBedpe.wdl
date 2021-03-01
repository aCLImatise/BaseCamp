version 1.0

task GeneratePonBedpe {
  input {
    Boolean? std_help
    String value_dot
  }
  command <<<
    GeneratePonBedpe \
      ~{value_dot} \
      ~{if (std_help) then "--stdhelp" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    std_help: "Displays options specific to this tool AND options common to all Picard command line\\ntools."
    value_dot: "INCLUDE_IMPRECISE_CALLS=Boolean"
  }
  output {
    File out_stdout = stdout()
  }
}