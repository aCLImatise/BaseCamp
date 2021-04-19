version 1.0

task MetagraphDNAStats {
  input {
    Boolean? print
    Boolean? print_internal
    Boolean? count_dummy
    Boolean? print_col_names
    Boolean? parallel
    Boolean? verbose
    Int graph_one
  }
  command <<<
    metagraph_DNA stats \
      ~{graph_one} \
      ~{if (print) then "--print" else ""} \
      ~{if (print_internal) then "--print-internal" else ""} \
      ~{if (count_dummy) then "--count-dummy" else ""} \
      ~{if (print_col_names) then "--print-col-names" else ""} \
      ~{if (parallel) then "--parallel" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/metagraph:0.2.0--h74b8f77_0"
  }
  parameter_meta {
    print: "print graph table to the screen [off]"
    print_internal: "print internal graph representation to screen [off]"
    count_dummy: "show number of dummy source and sink edges [off]"
    print_col_names: "print names of the columns in annotation to screen [off]"
    parallel: "[INT]     use multiple threads for computation [1]"
    verbose: "switch on verbose output [off]"
    graph_one: ""
  }
  output {
    File out_stdout = stdout()
  }
}