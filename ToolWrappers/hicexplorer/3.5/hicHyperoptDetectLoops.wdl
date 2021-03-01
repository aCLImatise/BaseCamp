version 1.0

task HicHyperoptDetectLoops {
  input {
    String? matrix
    File? protein_file
    Int? maximum_number_of_loops
    File? output_file_name
    String? resolution
    Int? threads
    Int? runs
  }
  command <<<
    hicHyperoptDetectLoops \
      ~{if defined(matrix) then ("--matrix " +  '"' + matrix + '"') else ""} \
      ~{if defined(protein_file) then ("--proteinFile " +  '"' + protein_file + '"') else ""} \
      ~{if defined(maximum_number_of_loops) then ("--maximumNumberOfLoops " +  '"' + maximum_number_of_loops + '"') else ""} \
      ~{if defined(output_file_name) then ("--outputFileName " +  '"' + output_file_name + '"') else ""} \
      ~{if defined(resolution) then ("--resolution " +  '"' + resolution + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(runs) then ("--runs " +  '"' + runs + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    matrix: "The matrix to compute the loops on."
    protein_file: "The protein file to validate the detected loops"
    maximum_number_of_loops: "The maximum number of loops that should be used for\\noptimization computation."
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