version 1.0

task GotreeDivide {
  input {
    File? input_trees_file
    File? divided_trees_output
    String? format
    Int? seed
    Int? threads
  }
  command <<<
    gotree divide \
      ~{if defined(input_trees_file) then ("--input " +  '"' + input_trees_file + '"') else ""} \
      ~{if defined(divided_trees_output) then ("--output " +  '"' + divided_trees_output + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gotree:0.4.1--h375a9b1_0"
  }
  parameter_meta {
    input_trees_file: "Input tree(s) file (default \\\"stdin\\\")"
    divided_trees_output: "Divided trees output file prefix (default \\\"prefix\\\")"
    format: "Input tree format (newick, nexus, or phyloxml) (default \\\"newick\\\")"
    seed: "Random Seed: -1 = nano seconds since 1970/01/01 00:00:00 (default -1)"
    threads: "Number of threads (Max=2) (default 1)"
  }
  output {
    File out_stdout = stdout()
    File out_divided_trees_output = "${in_divided_trees_output}"
  }
}