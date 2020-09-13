version 1.0

task GotreeCompareTrees {
  input {
    Boolean? binary
    Boolean? tips
    File? compared
    String? format
    File? ref_tree
    Int? seed
    Int? threads
  }
  command <<<
    gotree compare trees \
      ~{if (binary) then "--binary" else ""} \
      ~{if (tips) then "--tips" else ""} \
      ~{if defined(compared) then ("--compared " +  '"' + compared + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(ref_tree) then ("--reftree " +  '"' + ref_tree + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    binary: "If true, then just print true (identical tree) or false (different tree) for each compared tree"
    tips: "Include tips in the comparison"
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