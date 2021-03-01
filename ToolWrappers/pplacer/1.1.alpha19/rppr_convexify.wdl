version 1.0

task RpprConvexify {
  input {
    Boolean? reference_package_path
    Boolean? node_numbers
    Boolean? tree
    Boolean? colors
    Boolean? specified_path_the
    Boolean? cut_seqs
    Boolean? alternates
    Boolean? check_all_ranks
    Boolean? all_alternates
    Boolean? cut_off
    Boolean? limit_rank
    Boolean? timing
    Boolean? rooted
    Boolean? naive
    Boolean? no_early
    Boolean? help
    String convex_if_y
  }
  command <<<
    rppr convexify \
      ~{convex_if_y} \
      ~{if (reference_package_path) then "-c" else ""} \
      ~{if (node_numbers) then "--node-numbers" else ""} \
      ~{if (tree) then "--tree" else ""} \
      ~{if (colors) then "--colors" else ""} \
      ~{if (specified_path_the) then "-t" else ""} \
      ~{if (cut_seqs) then "--cut-seqs" else ""} \
      ~{if (alternates) then "--alternates" else ""} \
      ~{if (check_all_ranks) then "--check-all-ranks" else ""} \
      ~{if (all_alternates) then "--all-alternates" else ""} \
      ~{if (cut_off) then "--cutoff" else ""} \
      ~{if (limit_rank) then "--limit-rank" else ""} \
      ~{if (timing) then "--timing" else ""} \
      ~{if (rooted) then "--rooted" else ""} \
      ~{if (naive) then "--naive" else ""} \
      ~{if (no_early) then "--no-early" else ""} \
      ~{if (help) then "--help" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    reference_package_path: "Reference package path. Required."
    node_numbers: "Put the node numbers in where the bootstraps usually go."
    tree: "A tree file in newick format to work on in place of a reference package."
    colors: "A CSV file of the colors on the tree supplied with --tree."
    specified_path_the: "If specified, the path to write the discordance tree to."
    cut_seqs: "If specified, the path to write a CSV file of cut sequences per-rank to."
    alternates: "If specified, the path to write a CSV file of alternate colors per-sequence to."
    check_all_ranks: "When determining alternate colors, check all ranks instead of the least recent uncut rank."
    all_alternates: "When determining alternate colors, ignore the taxononomy and show all alternates."
    cut_off: "Any trees with a maximum badness over this value are skipped. Default: 12."
    limit_rank: "If specified, only convexify at the given ranks. Ranks are given as a comma-delimited list of names."
    timing: "If specified, save timing information for solved trees to a CSV file."
    rooted: "Strictly evaluate convexity; ensure that each color sits in its own rooted subtree."
    naive: "Use the naive convexify algorithm."
    no_early: "Don't terminate early when convexifying."
    help: "Display this list of options"
    convex_if_y: ""
  }
  output {
    File out_stdout = stdout()
  }
}