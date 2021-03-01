version 1.0

task GotreeBrlenRound {
  input {
    Int? rounded_length_output
    Int? precision
    String? format
    String? input_tree_default
    Int? seed
    Int? threads
  }
  command <<<
    gotree brlen round \
      ~{if defined(rounded_length_output) then ("--output " +  '"' + rounded_length_output + '"') else ""} \
      ~{if defined(precision) then ("--precision " +  '"' + precision + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(input_tree_default) then ("--input " +  '"' + input_tree_default + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    rounded_length_output: "Rounded length output tree file (default \\\"stdout\\\")"
    precision: "Rounding length precision (x means 10^-x) (default 3)"
    format: "Input tree format (newick, nexus, or phyloxml) (default \\\"newick\\\")"
    input_tree_default: "Input tree (default \\\"stdin\\\")"
    seed: "Random Seed: -1 = nano seconds since 1970/01/01 00:00:00 (default -1)"
    threads: "Number of threads (Max=8) (default 1)"
  }
  output {
    File out_stdout = stdout()
  }
}