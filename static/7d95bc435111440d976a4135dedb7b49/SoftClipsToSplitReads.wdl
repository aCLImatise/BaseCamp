version 1.0

task SoftClipsToSplitReads {
  input {
    Boolean? std_help
    String true_dot
    String aligners
  }
  command <<<
    SoftClipsToSplitReads \
      ~{true_dot} \
      ~{aligners} \
      ~{if (std_help) then "--stdhelp" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gridss:2.10.2--0"
  }
  parameter_meta {
    std_help: "Displays options specific to this tool AND options common to all Picard command line\\ntools."
    true_dot: "Default value: true. This option can be set to 'null' to clear the default value."
    aligners: "Default value: EXTERNAL. This option can be set to 'null' to clear the default"
  }
  output {
    File out_stdout = stdout()
  }
}