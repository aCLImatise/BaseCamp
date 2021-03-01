version 1.0

task IdentifyVariants {
  input {
    Boolean? std_help
  }
  command <<<
    IdentifyVariants \
      ~{if (std_help) then "--stdhelp" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    std_help: "Displays options specific to this tool AND options common to all Picard command line\\ntools."
  }
  output {
    File out_stdout = stdout()
  }
}