version 1.0

task GotreeBrlenSetrand {
  input {
    Float? max_mean
    Float? mean
    Float? min_mean
    Int? random_length_output
    String? format
    String? input_tree_default
    Int? seed
    Int? threads
  }
  command <<<
    gotree brlen setrand \
      ~{if defined(max_mean) then ("--max-mean " +  '"' + max_mean + '"') else ""} \
      ~{if defined(mean) then ("--mean " +  '"' + mean + '"') else ""} \
      ~{if defined(min_mean) then ("--min-mean " +  '"' + min_mean + '"') else ""} \
      ~{if defined(random_length_output) then ("--output " +  '"' + random_length_output + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(input_tree_default) then ("--input " +  '"' + input_tree_default + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    max_mean: "Mean of the exponential distribution of branch lengths will be drawn uniformly in the interval [min-mean,max-mean] (default 0.05)"
    mean: "Mean of the exponential distribution of branch lengths (default 0.1)"
    min_mean: "Mean of the exponential distribution of branch lengths will be drawn uniformly in the interval [min-mean,max-mean] (default 0.001)"
    random_length_output: "Random length output tree file (default \\\"stdout\\\")"
    format: "Input tree format (newick, nexus, or phyloxml) (default \\\"newick\\\")"
    input_tree_default: "Input tree (default \\\"stdin\\\")"
    seed: "Random Seed: -1 = nano seconds since 1970/01/01 00:00:00 (default -1)"
    threads: "Number of threads (Max=8) (default 1)"
  }
  output {
    File out_stdout = stdout()
  }
}