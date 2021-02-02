version 1.0

task GotreeReroot {
  input {
    String? input_tree_default
    File? rerooted_output_tree
    String? format
    Int? seed
    Int? threads
  }
  command <<<
    gotree reroot \
      ~{if defined(input_tree_default) then ("--input " +  '"' + input_tree_default + '"') else ""} \
      ~{if defined(rerooted_output_tree) then ("--output " +  '"' + rerooted_output_tree + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    input_tree_default: "Input Tree (default \\\"stdin\\\")"
    rerooted_output_tree: "Rerooted output tree file (default \\\"stdout\\\")"
    format: "Input tree format (newick, nexus, or phyloxml) (default \\\"newick\\\")"
    seed: "Random Seed: -1 = nano seconds since 1970/01/01 00:00:00 (default -1)"
    threads: "Number of threads (Max=8) (default 1)"
  }
  output {
    File out_stdout = stdout()
    File out_rerooted_output_tree = "${in_rerooted_output_tree}"
  }
}