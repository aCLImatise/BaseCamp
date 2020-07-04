version 1.0

task ScHicAdjustMatrix {
  input {
    String? matrix
    String? out_filename
    Array[String] chromosomes
    String? create_submatrix
    String? action
    String? threads
  }
  command <<<
    scHicAdjustMatrix \
      ~{if defined(matrix) then ("--matrix " +  '"' + matrix + '"') else ""} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""} \
      ~{if defined(chromosomes) then ("--chromosomes " +  '"' + chromosomes + '"') else ""} \
      ~{if defined(create_submatrix) then ("--createSubmatrix " +  '"' + create_submatrix + '"') else ""} \
      ~{if defined(action) then ("--action " +  '"' + action + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    matrix: "The matrix to adjust in the scool format. (default: None)"
    out_filename: "File name to save the adjusted matrix. (default: None)"
    chromosomes: "List of chromosomes to keep / remove (default: None)"
    create_submatrix: "Keep only first n matrices and remove the rest. Good for test data creation. (default: None)"
    action: "Keep, remove or mask the list of specified chromosomes / regions (default: keep)"
    threads: "Number of threads. Using the python multiprocessing module. (default: 4)"
  }
}