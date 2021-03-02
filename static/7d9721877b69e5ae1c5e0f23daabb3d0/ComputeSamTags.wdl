version 1.0

task ComputeSamTags {
  input {
    Boolean? std_help
    String substituted_dot
  }
  command <<<
    ComputeSamTags \
      ~{substituted_dot} \
      ~{if (std_help) then "--stdhelp" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gridss:2.10.2--0"
  }
  parameter_meta {
    std_help: "Displays options specific to this tool AND options common to all Picard command line\\ntools."
    substituted_dot: "Default value: true. This option can be set to 'null' to clear the default"
  }
  output {
    File out_stdout = stdout()
  }
}