version 1.0

task GotreeSample {
  input {
    String? input_reference_trees
    Int? nb_trees
    String? output_trees_default
    Boolean? replace
    String? format
    Int? seed
    Int? threads
  }
  command <<<
    gotree sample \
      ~{if defined(input_reference_trees) then ("--input " +  '"' + input_reference_trees + '"') else ""} \
      ~{if defined(nb_trees) then ("--nbtrees " +  '"' + nb_trees + '"') else ""} \
      ~{if defined(output_trees_default) then ("--output " +  '"' + output_trees_default + '"') else ""} \
      ~{if (replace) then "--replace" else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_reference_trees: "Input reference trees (default \\\"stdin\\\")"
    nb_trees: "Number of trees to sample from input file (default 1)"
    output_trees_default: "Output trees (default \\\"stdout\\\")"
    replace: "If given, samples with replacement"
    format: "Input tree format (newick, nexus, or phyloxml) (default \\\"newick\\\")"
    seed: "Random Seed: -1 = nano seconds since 1970/01/01 00:00:00 (default -1)"
    threads: "Number of threads (Max=8) (default 1)"
  }
  output {
    File out_stdout = stdout()
  }
}