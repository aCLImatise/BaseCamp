version 1.0

task Partitiongraphpy {
  input {
    Boolean? info
    File? stop_tags
    Int? subset_size
    Boolean? no_big_traverse
    File? force
    Int? threads
  }
  command <<<
    partition_graph_py \
      ~{if (info) then "--info" else ""} \
      ~{if defined(stop_tags) then ("--stoptags " +  '"' + stop_tags + '"') else ""} \
      ~{if defined(subset_size) then ("--subset-size " +  '"' + subset_size + '"') else ""} \
      ~{if (no_big_traverse) then "--no-big-traverse" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    info: "print citation information"
    stop_tags: "Use stoptags in this file during partitioning\\n(default: )"
    subset_size: "Set subset size (usually 1e5-1e6 is good) (default:\\n100000)"
    no_big_traverse: "Truncate graph joins at big traversals (default:\\nFalse)"
    force: "Overwrite output file if it exists (default: False)"
    threads: "Number of simultaneous threads to execute (default: 1)"
  }
  output {
    File out_stdout = stdout()
    File out_force = "${in_force}"
  }
}