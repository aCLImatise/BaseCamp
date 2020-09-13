version 1.0

task GotreeAnnotate {
  input {
    Boolean? comment
    File? compared
    File? input_trees_file
    File? map_file
    File? resolved_trees_default
    String? format
    Int? seed
    Int? threads
  }
  command <<<
    gotree annotate \
      ~{if (comment) then "--comment" else ""} \
      ~{if defined(compared) then ("--compared " +  '"' + compared + '"') else ""} \
      ~{if defined(input_trees_file) then ("--input " +  '"' + input_trees_file + '"') else ""} \
      ~{if defined(map_file) then ("--map-file " +  '"' + map_file + '"') else ""} \
      ~{if defined(resolved_trees_default) then ("--output " +  '"' + resolved_trees_default + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    comment: "Annotations are stored in Newick comment fields"
    compared: "Compared tree file (default \\\"stdin\\\")"
    input_trees_file: "Input tree(s) file (default \\\"stdin\\\")"
    map_file: "Name map input file (default \\\"none\\\")"
    resolved_trees_default: "Resolved tree(s) output file (default \\\"stdout\\\")"
    format: "Input tree format (newick, nexus, or phyloxml) (default \\\"newick\\\")"
    seed: "Random Seed: -1 = nano seconds since 1970/01/01 00:00:00 (default -1)"
    threads: "Number of threads (Max=8) (default 1)"
  }
  output {
    File out_stdout = stdout()
    File out_resolved_trees_default = "${in_resolved_trees_default}"
  }
}