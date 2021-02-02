version 1.0

task GotreeCompareEdges {
  input {
    Boolean? moved_tax_a
    Boolean? transfer_dist
    File? compared
    String? format
    File? ref_tree
    Int? seed
    Int? threads
  }
  command <<<
    gotree compare edges \
      ~{if (moved_tax_a) then "--moved-taxa" else ""} \
      ~{if (transfer_dist) then "--transfer-dist" else ""} \
      ~{if defined(compared) then ("--compared " +  '"' + compared + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(ref_tree) then ("--reftree " +  '"' + ref_tree + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    moved_tax_a: "only if --transfer-dist is given: Then display, for each branch, taxa that must be moved"
    transfer_dist: "If transfer dist must be computed for each edge"
    compared: "Compared trees input file (default \\\"none\\\")"
    format: "Input tree format (newick, nexus, or phyloxml) (default \\\"newick\\\")"
    ref_tree: "Reference tree input file (default \\\"stdin\\\")"
    seed: "Random Seed: -1 = nano seconds since 1970/01/01 00:00:00 (default -1)"
    threads: "Number of threads (Max=8) (default 1)"
  }
  output {
    File out_stdout = stdout()
  }
}