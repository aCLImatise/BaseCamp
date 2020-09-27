version 1.0

task HicHyperoptDetectLoopsHiCCUPS {
  input {
    Int? maximum_number_of_loops
    String? matrix
    File? protein_file
    File? juicer_path
    File? output_file_name
    String? resolution
    Int? runs
    Int? threads
    String? normalization
    Boolean? cpu
    Boolean? restricted
  }
  command <<<
    hicHyperoptDetectLoopsHiCCUPS \
      ~{if defined(maximum_number_of_loops) then ("--maximumNumberOfLoops " +  '"' + maximum_number_of_loops + '"') else ""} \
      ~{if defined(matrix) then ("--matrix " +  '"' + matrix + '"') else ""} \
      ~{if defined(protein_file) then ("--proteinFile " +  '"' + protein_file + '"') else ""} \
      ~{if defined(juicer_path) then ("--juicerPath " +  '"' + juicer_path + '"') else ""} \
      ~{if defined(output_file_name) then ("--outputFileName " +  '"' + output_file_name + '"') else ""} \
      ~{if defined(resolution) then ("--resolution " +  '"' + resolution + '"') else ""} \
      ~{if defined(runs) then ("--runs " +  '"' + runs + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(normalization) then ("--normalization " +  '"' + normalization + '"') else ""} \
      ~{if (cpu) then "--cpu" else ""} \
      ~{if (restricted) then "--restricted" else ""}
  >>>
  parameter_meta {
    maximum_number_of_loops: "The maximum number of loops that should be used for\\noptimization computation."
    matrix: "The matrix to compute the loops on."
    protein_file: "The protein file to validate the detected loops"
    juicer_path: "path to juicer.jar"
    output_file_name: "File names for the result of the optimization."
    resolution: "Resolution of matrix"
    runs: "Number of runs of hyperopt."
    threads: "Number of threads (uses the python multiprocessing\\nmodule)."
    normalization: "Normalization table name."
    cpu: "use the CPU version"
    restricted: "If the GPU version is used, search only within 8 MB."
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
  }
}