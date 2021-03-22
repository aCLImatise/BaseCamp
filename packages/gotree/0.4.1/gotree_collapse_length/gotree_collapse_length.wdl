version 1.0

task GotreeCollapseLength {
  input {
    Float? length
    Boolean? root
    Boolean? tips
    String? format
    String? input_tree_default
    File? collapsed_tree_output
    Int? seed
    Int? threads
  }
  command <<<
    gotree collapse length \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if (root) then "--root" else ""} \
      ~{if (tips) then "--tips" else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(input_tree_default) then ("--input " +  '"' + input_tree_default + '"') else ""} \
      ~{if defined(collapsed_tree_output) then ("--output " +  '"' + collapsed_tree_output + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gotree:0.4.1--h375a9b1_0"
  }
  parameter_meta {
    length: "Length cutoff to collapse branches"
    root: "Applies also to branches connected to the root (may unroot the tree)"
    tips: "Applies also to tips (keeps a 0.0 length tip)"
    format: "Input tree format (newick, nexus, or phyloxml) (default \\\"newick\\\")"
    input_tree_default: "Input tree (default \\\"stdin\\\")"
    collapsed_tree_output: "Collapsed tree output file (default \\\"stdout\\\")"
    seed: "Random Seed: -1 = nano seconds since 1970/01/01 00:00:00 (default -1)"
    threads: "Number of threads (Max=2) (default 1)"
  }
  output {
    File out_stdout = stdout()
    File out_collapsed_tree_output = "${in_collapsed_tree_output}"
  }
}