version 1.0

task PartitionGraph.py {
  input {
    Boolean? info
    File? stop_tags
    String? subset_size
    Boolean? no_big_traverse
    Boolean? force
    String? threads
    String basename
  }
  command <<<
    partition-graph.py \
      ~{basename} \
      ~{true="--info" false="" info} \
      ~{if defined(stop_tags) then ("--stoptags " +  '"' + stop_tags + '"') else ""} \
      ~{if defined(subset_size) then ("--subset-size " +  '"' + subset_size + '"') else ""} \
      ~{true="--no-big-traverse" false="" no_big_traverse} \
      ~{true="--force" false="" force} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    info: "print citation information"
    stop_tags: "Use stoptags in this file during partitioning (default: )"
    subset_size: "Set subset size (usually 1e5-1e6 is good) (default: 100000)"
    no_big_traverse: "Truncate graph joins at big traversals (default: False)"
    force: "Overwrite output file if it exists (default: False)"
    threads: "Number of simultaneous threads to execute (default: 1)"
    basename: "basename of the input k-mer nodegraph + tagset files"
  }
}