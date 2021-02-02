version 1.0

task GotreeCompare {
  input {
    File? compared
    File? ref_tree
    String? format
    Int? seed
    Int? threads
  }
  command <<<
    gotree compare \
      ~{if defined(compared) then ("--compared " +  '"' + compared + '"') else ""} \
      ~{if defined(ref_tree) then ("--reftree " +  '"' + ref_tree + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    compared: "Compared trees input file (default \\\"none\\\")"
    ref_tree: "Reference tree input file (default \\\"stdin\\\")"
    format: "Input tree format (newick, nexus, or phyloxml) (default \\\"newick\\\")"
    seed: "Random Seed: -1 = nano seconds since 1970/01/01 00:00:00 (default -1)"
    threads: "Number of threads (Max=8) (default 1)"
  }
  output {
    File out_stdout = stdout()
  }
}