version 1.0

task GotreeResolve {
  input {
    File? input_trees_file
    File? resolved_trees_output
    String? format
    Int? seed
    Int? threads
  }
  command <<<
    gotree resolve \
      ~{if defined(input_trees_file) then ("--input " +  '"' + input_trees_file + '"') else ""} \
      ~{if defined(resolved_trees_output) then ("--output " +  '"' + resolved_trees_output + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_trees_file: "Input tree(s) file (default \\\"stdin\\\")"
    resolved_trees_output: "Resolved tree(s) output file (default \\\"stdout\\\")"
    format: "Input tree format (newick, nexus, or phyloxml) (default \\\"newick\\\")"
    seed: "Random Seed: -1 = nano seconds since 1970/01/01 00:00:00 (default -1)"
    threads: "Number of threads (Max=8) (default 1)"
  }
  output {
    File out_stdout = stdout()
    File out_resolved_trees_output = "${in_resolved_trees_output}"
  }
}