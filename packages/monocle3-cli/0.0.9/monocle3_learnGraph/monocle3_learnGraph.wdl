version 1.0

task Monocle3LearnGraph {
  input {
    Int? input_object_format
    Int? output_object_format
    Boolean? introspective
    Boolean? no_partition
    Boolean? no_close_loop
    Float? euclidean_distance_ratio
    Float? geodesic_distance_ratio
    Boolean? no_prune_graph
    Int? minimal_branch_len
    Boolean? orthogonal_proj_tip
    Boolean? verbose
    String input_object
    String output_object
  }
  command <<<
    monocle3 learnGraph \
      ~{input_object} \
      ~{output_object} \
      ~{if defined(input_object_format) then ("--input-object-format " +  '"' + input_object_format + '"') else ""} \
      ~{if defined(output_object_format) then ("--output-object-format " +  '"' + output_object_format + '"') else ""} \
      ~{if (introspective) then "--introspective" else ""} \
      ~{if (no_partition) then "--no-partition" else ""} \
      ~{if (no_close_loop) then "--no-close-loop" else ""} \
      ~{if defined(euclidean_distance_ratio) then ("--euclidean-distance-ratio " +  '"' + euclidean_distance_ratio + '"') else ""} \
      ~{if defined(geodesic_distance_ratio) then ("--geodesic-distance-ratio " +  '"' + geodesic_distance_ratio + '"') else ""} \
      ~{if (no_prune_graph) then "--no-prune-graph" else ""} \
      ~{if defined(minimal_branch_len) then ("--minimal-branch-len " +  '"' + minimal_branch_len + '"') else ""} \
      ~{if (orthogonal_proj_tip) then "--orthogonal-proj-tip" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    input_object_format: "Format of input object. [Default: cds3]"
    output_object_format: "Format of output object. [Default: cds3]"
    introspective: "Print introspective information of the output object."
    no_partition: "When this option is set, learn a single tree structure for all the partitions. If not set, use the partitions calculated when clustering and identify disjoint graphs in each."
    no_close_loop: "When this option is set, skip the additional run of loop closing after computing the principal graphs to identify potential loop structure in the data space."
    euclidean_distance_ratio: "The maximal ratio between the euclidean distance of two tip nodes in the spanning tree inferred from SimplePPT algorithm and that of the maximum distance between any connecting points on the spanning tree allowed to be connected during the loop closure procedure. [Default: 1]"
    geodesic_distance_ratio: "The minimal ratio between the geodestic distance of two tip nodes in the spanning tree inferred from SimplePPT algorithm and that of the length of the diameter path on the spanning tree allowed to be connected during the loop closure procedure. (Both euclidean_distance_ratio and geodestic_distance_ratio need to be satisfied to introduce the edge for loop closure.)"
    no_prune_graph: "When this option is set, perform an additional run of graph pruning to remove smaller insignificant branches."
    minimal_branch_len: "The minimal length of the diameter path for a branch to be preserved during graph pruning procedure. [Default: 10]"
    orthogonal_proj_tip: "When this option is set, perform orthogonal projection for cells corresponding to the tip principal points."
    verbose: "Emit verbose output."
    input_object: ""
    output_object: ""
  }
  output {
    File out_stdout = stdout()
  }
}