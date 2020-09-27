version 1.0

task CollectGridssMetrics {
  input {
    Boolean? displays_options_specific
    String times_dot
  }
  command <<<
    CollectGridssMetrics \
      ~{times_dot} \
      ~{if (displays_options_specific) then "-H" else ""}
  >>>
  parameter_meta {
    displays_options_specific: "Displays options specific to this tool AND options common to all Picard command line\\ntools."
    times_dot: "INCLUDE_UNPAIRED=Boolean"
  }
  output {
    File out_stdout = stdout()
  }
}