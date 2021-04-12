version 1.0

task UnmappedSequencesToFastq {
  input {
    Boolean? std_help
    String uninformative_dot
    String value_dot
  }
  command <<<
    UnmappedSequencesToFastq \
      ~{uninformative_dot} \
      ~{value_dot} \
      ~{if (std_help) then "--stdhelp" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gridss:2.11.1--hdfd78af_1"
  }
  parameter_meta {
    std_help: "Displays options specific to this tool AND options common to all Picard command line\\ntools."
    uninformative_dot: "Default value: 20. This option can be set to 'null' to clear the default"
    value_dot: "INCLUDE_SOFT_CLIPPED_BASES=Boolean"
  }
  output {
    File out_stdout = stdout()
  }
}