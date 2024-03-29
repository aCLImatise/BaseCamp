version 1.0

task CollectGridssMetrics {
  input {
    Boolean? std_help
    String times_dot
  }
  command <<<
    CollectGridssMetrics \
      ~{times_dot} \
      ~{if (std_help) then "--stdhelp" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    std_help: "Displays options specific to this tool AND options common to all Picard command line\\ntools."
    times_dot: "INCLUDE_UNPAIRED=Boolean"
  }
  output {
    File out_stdout = stdout()
  }
}