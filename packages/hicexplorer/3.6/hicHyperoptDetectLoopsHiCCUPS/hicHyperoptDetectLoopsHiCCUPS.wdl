version 1.0

task HicHyperoptDetectLoopsHiCCUPS {
  input {
    String? matrix
    File? protein_file
    Int? maximum_number_of_loops
    File? path_to_juicerjar
    File? output_file_name
    Int? resolution
    Int? runs
    Int? threads
    String? normalization
    Boolean? cpu
    Boolean? restricted
    String var_11
  }
  command <<<
    hicHyperoptDetectLoopsHiCCUPS \
      ~{var_11} \
      ~{if defined(matrix) then ("--matrix " +  '"' + matrix + '"') else ""} \
      ~{if defined(protein_file) then ("--proteinFile " +  '"' + protein_file + '"') else ""} \
      ~{if defined(maximum_number_of_loops) then ("--maximumNumberOfLoops " +  '"' + maximum_number_of_loops + '"') else ""} \
      ~{if defined(path_to_juicerjar) then ("--juicerPath " +  '"' + path_to_juicerjar + '"') else ""} \
      ~{if defined(output_file_name) then ("--outputFileName " +  '"' + output_file_name + '"') else ""} \
      ~{if defined(resolution) then ("--resolution " +  '"' + resolution + '"') else ""} \
      ~{if defined(runs) then ("--runs " +  '"' + runs + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(normalization) then ("--normalization " +  '"' + normalization + '"') else ""} \
      ~{if (cpu) then "--cpu" else ""} \
      ~{if (restricted) then "--restricted" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hicexplorer:3.6--py_0"
  }
  parameter_meta {
    matrix: "The matrix to compute the loops on."
    protein_file: "The protein file to validate the detected loops"
    maximum_number_of_loops: "The maximum number of loops that should be used for\\noptimization computation."
    path_to_juicerjar: "path to juicer.jar"
    output_file_name: "File names for the result of the optimization\\n(Default: hyperoptHiCCUPS_result.txt)."
    resolution: "Resolution of matrix (Default: 10000)."
    runs: "Number of runs of hyperopt."
    threads: "Number of threads (uses the python multiprocessing\\nmodule) (Default: 4)."
    normalization: "Normalization table name"
    cpu: "use the CPU version"
    restricted: "If the GPU version is used, search only within 8 MB."
    var_11: "[--outputFileName OUTPUTFILENAME]"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
  }
}