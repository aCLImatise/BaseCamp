version 1.0

task GotreePrune {
  input {
    String? comp
    String? output_tree_default
    Int? random
    String? ref
    Boolean? revert
    File? tip_file
    String? format
    Int? seed
    Int? threads
  }
  command <<<
    gotree prune \
      ~{if defined(comp) then ("--comp " +  '"' + comp + '"') else ""} \
      ~{if defined(output_tree_default) then ("--output " +  '"' + output_tree_default + '"') else ""} \
      ~{if defined(random) then ("--random " +  '"' + random + '"') else ""} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if (revert) then "--revert" else ""} \
      ~{if defined(tip_file) then ("--tipfile " +  '"' + tip_file + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    comp: "Input compared tree  (default \\\"none\\\")"
    output_tree_default: "Output tree (default \\\"stdout\\\")"
    random: "Number of tips to randomly sample"
    ref: "Input reference tree (default \\\"stdin\\\")"
    revert: "If true, then revert the behavior: will keep only species given in the command line, or keep only the species that are specific to the input tree, or keep only randomly selected taxa"
    tip_file: "Tip file (default \\\"none\\\")"
    format: "Input tree format (newick, nexus, or phyloxml) (default \\\"newick\\\")"
    seed: "Random Seed: -1 = nano seconds since 1970/01/01 00:00:00 (default -1)"
    threads: "Number of threads (Max=8) (default 1)"
  }
  output {
    File out_stdout = stdout()
  }
}