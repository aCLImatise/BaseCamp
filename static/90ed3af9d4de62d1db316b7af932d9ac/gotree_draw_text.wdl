version 1.0

task GotreeDrawText {
  input {
    Int? width
    String? format
    String? input_tree_default
    Boolean? no_branch_lengths
    Boolean? no_tip_labels
    File? output_file_default
    Int? seed
    Float? support_cut_off
    Int? threads
    Boolean? with_branch_support
    Boolean? with_node_comments
    Boolean? with_node_labels
    Boolean? with_node_symbols
  }
  command <<<
    gotree draw text \
      ~{if defined(width) then ("--width " +  '"' + width + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(input_tree_default) then ("--input " +  '"' + input_tree_default + '"') else ""} \
      ~{if (no_branch_lengths) then "--no-branch-lengths" else ""} \
      ~{if (no_tip_labels) then "--no-tip-labels" else ""} \
      ~{if defined(output_file_default) then ("--output " +  '"' + output_file_default + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(support_cut_off) then ("--support-cutoff " +  '"' + support_cut_off + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (with_branch_support) then "--with-branch-support" else ""} \
      ~{if (with_node_comments) then "--with-node-comments" else ""} \
      ~{if (with_node_labels) then "--with-node-labels" else ""} \
      ~{if (with_node_symbols) then "--with-node-symbols" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    width: "Width of tree/terminal (in characters) (default 200)"
    format: "Input tree format (newick, nexus, or phyloxml) (default \\\"newick\\\")"
    input_tree_default: "Input tree (default \\\"stdin\\\")"
    no_branch_lengths: "Draw the tree without branch lengths (all the same length)"
    no_tip_labels: "Draw the tree without tip labels"
    output_file_default: "Output file (default \\\"stdout\\\")"
    seed: "Random Seed: -1 = nano seconds since 1970/01/01 00:00:00 (default -1)"
    support_cut_off: "Cutoff for highlithing supported branches (default 0.7)"
    threads: "Number of threads (Max=8) (default 1)"
    with_branch_support: "Highlight highly supported branches"
    with_node_comments: "Draw the tree with internal node comments (if --with-node-labels is not set)"
    with_node_labels: "Draw the tree with internal node labels"
    with_node_symbols: "Draw the tree with internal node symbols"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_default = "${in_output_file_default}"
  }
}