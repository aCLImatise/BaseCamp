version 1.0

task CollectCigarMetrics {
  input {
    Boolean? displays_options_specific
  }
  command <<<
    CollectCigarMetrics \
      ~{if (displays_options_specific) then "-H" else ""}
  >>>
  parameter_meta {
    displays_options_specific: "Displays options specific to this tool AND options common to all Picard command line\\ntools."
  }
  output {
    File out_stdout = stdout()
  }
}