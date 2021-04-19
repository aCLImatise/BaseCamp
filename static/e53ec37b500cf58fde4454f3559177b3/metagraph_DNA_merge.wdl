version 1.0

task MetagraphDNAMerge {
  input {
    Boolean? bins_per_thread
    Boolean? dynamic
    Boolean? part_idx
    Boolean? parts_total
    Boolean? parallel
    Boolean? verbose
    String? o
    Int graph_one
    Int graph_two
  }
  command <<<
    metagraph_DNA merge \
      ~{graph_one} \
      ~{graph_two} \
      ~{if (bins_per_thread) then "--bins-per-thread" else ""} \
      ~{if (dynamic) then "--dynamic" else ""} \
      ~{if (part_idx) then "--part-idx" else ""} \
      ~{if (parts_total) then "--parts-total" else ""} \
      ~{if (parallel) then "--parallel" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/metagraph:0.2.0--h74b8f77_0"
  }
  parameter_meta {
    bins_per_thread: "[INT]      number of bins each thread computes on average [1]"
    dynamic: "dynamic merge by adding traversed paths [off]"
    part_idx: "[INT]             idx to use when doing external merge []"
    parts_total: "[INT]          total number of parts in external merge[]"
    parallel: "[INT]             use multiple threads for computation [1]"
    verbose: "switch on verbose output [off]"
    o: ""
    graph_one: ""
    graph_two: ""
  }
  output {
    File out_stdout = stdout()
  }
}