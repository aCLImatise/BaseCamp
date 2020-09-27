version 1.0

task CollectFragmentGCMetrics {
  input {
    Boolean? displays_options_specific
    String value_dot
  }
  command <<<
    CollectFragmentGCMetrics \
      ~{value_dot} \
      ~{if (displays_options_specific) then "-H" else ""}
  >>>
  parameter_meta {
    displays_options_specific: "Displays options specific to this tool AND options common to all Picard command line\\ntools."
    value_dot: "READ_PAIR_CONCORDANCE_MIN_FRAGMENT_SIZE=Integer"
  }
  output {
    File out_stdout = stdout()
  }
}