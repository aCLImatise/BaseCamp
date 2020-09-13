version 1.0

task GotreeBrlenSetmin {
  input {
    Float? length
    Int? min_length_output
    String? format
    String? input_tree_default
    Int? seed
    Int? threads
  }
  command <<<
    gotree brlen setmin \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if defined(min_length_output) then ("--output " +  '"' + min_length_output + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(input_tree_default) then ("--input " +  '"' + input_tree_default + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    length: "Min Length cutoff"
    min_length_output: "Min length output tree file (default \\\"stdout\\\")"
    format: "Input tree format (newick, nexus, or phyloxml) (default \\\"newick\\\")"
    input_tree_default: "Input tree (default \\\"stdin\\\")"
    seed: "Random Seed: -1 = nano seconds since 1970/01/01 00:00:00 (default -1)"
    threads: "Number of threads (Max=8) (default 1)"
  }
  output {
    File out_stdout = stdout()
  }
}