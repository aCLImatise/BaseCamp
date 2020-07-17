version 1.0

task KissreadsGraph {
  input {
    String? this_message_exit
    String? t
    File? write_obtained_output
    Int? will_use_seeds
    Int? will_consider_edge
    Int? will_map_read
  }
  command <<<
    kissreads_graph \
      ~{if defined(this_message_exit) then ("-h " +  '"' + this_message_exit + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(write_obtained_output) then ("-o " +  '"' + write_obtained_output + '"') else ""} \
      ~{if defined(will_use_seeds) then ("-k " +  '"' + will_use_seeds + '"') else ""} \
      ~{if defined(will_consider_edge) then ("-c " +  '"' + will_consider_edge + '"') else ""} \
      ~{if defined(will_map_read) then ("-d " +  '"' + will_map_read + '"') else ""}
  >>>
  parameter_meta {
    this_message_exit: "this message and exit"
    t: "\"c\" \"coverage\"  \"m\" \"modify\" "
    write_obtained_output: ": write obtained graph. Default: standard output "
    will_use_seeds: ": will use seeds of length size_seed. Default: 25."
    will_consider_edge: ": Will consider an edge as coherent if coverage (number of reads from all sets using this edge) is at least min_coverage. Default: 2 "
    will_map_read: ": Will map a read on the graph with at most max_substitutions substitutions. Default: 1 "
  }
}