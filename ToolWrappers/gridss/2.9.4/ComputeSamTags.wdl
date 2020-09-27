version 1.0

task ComputeSamTags {
  input {
    Boolean? displays_options_specific
    String substituted_dot
  }
  command <<<
    ComputeSamTags \
      ~{substituted_dot} \
      ~{if (displays_options_specific) then "-H" else ""}
  >>>
  parameter_meta {
    displays_options_specific: "Displays options specific to this tool AND options common to all Picard command line\\ntools."
    substituted_dot: "Default value: true. This option can be set to 'null' to clear the default"
  }
  output {
    File out_stdout = stdout()
  }
}