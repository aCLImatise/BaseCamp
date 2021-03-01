version 1.0

task GotreeMerge {
  input {
    File? compared
    File? merged_tree_output
    File? ref_tree
    String? format
    Int? seed
    Int? threads
  }
  command <<<
    gotree merge \
      ~{if defined(compared) then ("--compared " +  '"' + compared + '"') else ""} \
      ~{if defined(merged_tree_output) then ("--output " +  '"' + merged_tree_output + '"') else ""} \
      ~{if defined(ref_tree) then ("--reftree " +  '"' + ref_tree + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    compared: "Compared tree input file (default \\\"stdin\\\")"
    merged_tree_output: "Merged tree output file (default \\\"stdout\\\")"
    ref_tree: "Reference tree input file (default \\\"stdin\\\")"
    format: "Input tree format (newick, nexus, or phyloxml) (default \\\"newick\\\")"
    seed: "Random Seed: -1 = nano seconds since 1970/01/01 00:00:00 (default -1)"
    threads: "Number of threads (Max=8) (default 1)"
  }
  output {
    File out_stdout = stdout()
    File out_merged_tree_output = "${in_merged_tree_output}"
  }
}