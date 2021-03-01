version 1.0

task GotreeNni {
  input {
    String? input_tree_default
    File? nni_output_tree
    String? format
    Int? seed
    Int? threads
  }
  command <<<
    gotree nni \
      ~{if defined(input_tree_default) then ("--input " +  '"' + input_tree_default + '"') else ""} \
      ~{if defined(nni_output_tree) then ("--output " +  '"' + nni_output_tree + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_tree_default: "Input Tree (default \\\"stdin\\\")"
    nni_output_tree: "NNI output tree file (default \\\"stdout\\\")"
    format: "Input tree format (newick, nexus, or phyloxml) (default \\\"newick\\\")"
    seed: "Random Seed: -1 = nano seconds since 1970/01/01 00:00:00 (default -1)"
    threads: "Number of threads (Max=8) (default 1)"
  }
  output {
    File out_stdout = stdout()
    File out_nni_output_tree = "${in_nni_output_tree}"
  }
}