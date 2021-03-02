version 1.0

task GotreeBrlenCut {
  input {
    Float? max_length
    File? output_file_groups
    String? format
    String? input_tree_default
    Int? seed
    Int? threads
  }
  command <<<
    gotree brlen cut \
      ~{if defined(max_length) then ("--max-length " +  '"' + max_length + '"') else ""} \
      ~{if defined(output_file_groups) then ("--output " +  '"' + output_file_groups + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(input_tree_default) then ("--input " +  '"' + input_tree_default + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    max_length: "Length cutoff. Branches with length greater than or equal to this cutoff are considered removed (default 0.5)"
    output_file_groups: "Output file with groups of tips/connected components (default \\\"stdout\\\")"
    format: "Input tree format (newick, nexus, or phyloxml) (default \\\"newick\\\")"
    input_tree_default: "Input tree (default \\\"stdin\\\")"
    seed: "Random Seed: -1 = nano seconds since 1970/01/01 00:00:00 (default -1)"
    threads: "Number of threads (Max=8) (default 1)"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_groups = "${in_output_file_groups}"
  }
}