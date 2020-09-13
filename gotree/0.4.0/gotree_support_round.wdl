version 1.0

task GotreeSupportRound {
  input {
    Int? precision
    String? format
    String? input_tree_default
    File? cleared_tree_output
    Int? seed
    Int? threads
  }
  command <<<
    gotree support round \
      ~{if defined(precision) then ("--precision " +  '"' + precision + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(input_tree_default) then ("--input " +  '"' + input_tree_default + '"') else ""} \
      ~{if defined(cleared_tree_output) then ("--output " +  '"' + cleared_tree_output + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    precision: "Rounding support precision (x means 10^-x) (default 3)"
    format: "Input tree format (newick, nexus, or phyloxml) (default \\\"newick\\\")"
    input_tree_default: "Input tree (default \\\"stdin\\\")"
    cleared_tree_output: "Cleared tree output file (default \\\"stdout\\\")"
    seed: "Random Seed: -1 = nano seconds since 1970/01/01 00:00:00 (default -1)"
    threads: "Number of threads (Max=8) (default 1)"
  }
  output {
    File out_stdout = stdout()
    File out_cleared_tree_output = "${in_cleared_tree_output}"
  }
}