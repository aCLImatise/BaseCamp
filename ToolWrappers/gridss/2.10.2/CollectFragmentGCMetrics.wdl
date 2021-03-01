version 1.0

task CollectFragmentGCMetrics {
  input {
    Boolean? std_help
    String value_dot
  }
  command <<<
    CollectFragmentGCMetrics \
      ~{value_dot} \
      ~{if (std_help) then "--stdhelp" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gridss:2.10.2--0"
  }
  parameter_meta {
    std_help: "Displays options specific to this tool AND options common to all Picard command line\\ntools."
    value_dot: "READ_PAIR_CONCORDANCE_MIN_FRAGMENT_SIZE=Integer"
  }
  output {
    File out_stdout = stdout()
  }
}