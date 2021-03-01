version 1.0

task GotreeRerootOutgroup {
  input {
    Boolean? remove_out_group
    Boolean? strict
    File? tip_file
    String? format
    String? input_tree_default
    File? rerooted_output_tree
    Int? seed
    Int? threads
  }
  command <<<
    gotree reroot outgroup \
      ~{if (remove_out_group) then "--remove-outgroup" else ""} \
      ~{if (strict) then "--strict" else ""} \
      ~{if defined(tip_file) then ("--tip-file " +  '"' + tip_file + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(input_tree_default) then ("--input " +  '"' + input_tree_default + '"') else ""} \
      ~{if defined(rerooted_output_tree) then ("--output " +  '"' + rerooted_output_tree + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    remove_out_group: "Removes the outgroup after reroot"
    strict: "Enforce the outgroup to be monophyletic (else throw an error)"
    tip_file: "File containing names of tips of the outgroup (default \\\"none\\\")"
    format: "Input tree format (newick, nexus, or phyloxml) (default \\\"newick\\\")"
    input_tree_default: "Input Tree (default \\\"stdin\\\")"
    rerooted_output_tree: "Rerooted output tree file (default \\\"stdout\\\")"
    seed: "Random Seed: -1 = nano seconds since 1970/01/01 00:00:00 (default -1)"
    threads: "Number of threads (Max=8) (default 1)"
  }
  output {
    File out_stdout = stdout()
    File out_rerooted_output_tree = "${in_rerooted_output_tree}"
  }
}