version 1.0

task GotreeMatrix {
  input {
    String? input_tree_default
    File? matrix_output_file
    String? format
    Int? seed
    Int? threads
  }
  command <<<
    gotree matrix \
      ~{if defined(input_tree_default) then ("--input " +  '"' + input_tree_default + '"') else ""} \
      ~{if defined(matrix_output_file) then ("--output " +  '"' + matrix_output_file + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gotree:0.4.1--h375a9b1_0"
  }
  parameter_meta {
    input_tree_default: "Input tree (default \\\"stdin\\\")"
    matrix_output_file: "Matrix output file (default \\\"stdout\\\")"
    format: "Input tree format (newick, nexus, or phyloxml) (default \\\"newick\\\")"
    seed: "Random Seed: -1 = nano seconds since 1970/01/01 00:00:00 (default -1)"
    threads: "Number of threads (Max=2) (default 1)"
  }
  output {
    File out_stdout = stdout()
    File out_matrix_output_file = "${in_matrix_output_file}"
  }
}