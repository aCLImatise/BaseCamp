version 1.0

task GotreeStats {
  input {
    String? input_tree_default
    File? output_file_default
    String? format
    Int? seed
    Int? threads
    String edges
    String nodes
    String rooted
    String splits
    String tips
  }
  command <<<
    gotree stats \
      ~{edges} \
      ~{nodes} \
      ~{rooted} \
      ~{splits} \
      ~{tips} \
      ~{if defined(input_tree_default) then ("--input " +  '"' + input_tree_default + '"') else ""} \
      ~{if defined(output_file_default) then ("--output " +  '"' + output_file_default + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gotree:0.4.1--h375a9b1_0"
  }
  parameter_meta {
    input_tree_default: "Input tree (default \\\"stdin\\\")"
    output_file_default: "Output file (default \\\"stdout\\\")"
    format: "Input tree format (newick, nexus, or phyloxml) (default \\\"newick\\\")"
    seed: "Random Seed: -1 = nano seconds since 1970/01/01 00:00:00 (default -1)"
    threads: "Number of threads (Max=2) (default 1)"
    edges: "Displays statistics on edges of input tree"
    nodes: "Displays statistics on nodes of input tree"
    rooted: "Tells wether the tree is rooted or unrooted"
    splits: "Prints all the splits from an input tree"
    tips: "Displays statistics on tips of input tree"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_default = "${in_output_file_default}"
  }
}