version 1.0

task HicHyperoptDetectLoops {
  input {
    Int? maximum_number_of_loops
    String? matrix
    File? protein_file
    File? output_file_name
    String? resolution
    Int? threads
    Int? runs
  }
  command <<<
    hicHyperoptDetectLoops \
      ~{if defined(maximum_number_of_loops) then ("--maximumNumberOfLoops " +  '"' + maximum_number_of_loops + '"') else ""} \
      ~{if defined(matrix) then ("--matrix " +  '"' + matrix + '"') else ""} \
      ~{if defined(protein_file) then ("--proteinFile " +  '"' + protein_file + '"') else ""} \
      ~{if defined(output_file_name) then ("--outputFileName " +  '"' + output_file_name + '"') else ""} \
      ~{if defined(resolution) then ("--resolution " +  '"' + resolution + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(runs) then ("--runs " +  '"' + runs + '"') else ""}
  >>>
  parameter_meta {
    maximum_number_of_loops: "The maximum number of loops that should be used for\\noptimization computation."
    matrix: "The matrix to compute the loops on."
    protein_file: "The protein file to validate the detected loops"
    output_file_name: "File names for the result of the optimization."
    resolution: "Resolution of matrix"
    threads: "Number of threads (uses the python multiprocessing\\nmodule)."
    runs: "Number of runs of hyperopt."
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
  }
}