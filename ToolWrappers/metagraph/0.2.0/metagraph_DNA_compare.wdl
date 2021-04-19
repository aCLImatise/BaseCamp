version 1.0

task MetagraphDNACompare {
  input {
    Boolean? verbose
    Int graph_one
    Int graph_two
  }
  command <<<
    metagraph_DNA compare \
      ~{graph_one} \
      ~{graph_two} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/metagraph:0.2.0--h74b8f77_0"
  }
  parameter_meta {
    verbose: "switch on verbose output [off]"
    graph_one: ""
    graph_two: ""
  }
  output {
    File out_stdout = stdout()
  }
}