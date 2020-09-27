version 1.0

task SoftClipsToSplitReads {
  input {
    Boolean? displays_options_specific
    String true_dot
    String aligners
  }
  command <<<
    SoftClipsToSplitReads \
      ~{true_dot} \
      ~{aligners} \
      ~{if (displays_options_specific) then "-H" else ""}
  >>>
  parameter_meta {
    displays_options_specific: "Displays options specific to this tool AND options common to all Picard command line\\ntools."
    true_dot: "Default value: true. This option can be set to 'null' to clear the default value."
    aligners: "Default value: EXTERNAL. This option can be set to 'null' to clear the default"
  }
  output {
    File out_stdout = stdout()
  }
}