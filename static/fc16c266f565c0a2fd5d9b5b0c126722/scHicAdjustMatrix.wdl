version 1.0

task ScHicAdjustMatrix {
  input {
    String? matrix
    File? out_filename
    Array[String] chromosomes
    String? create_submatrix
    String? action
    Int? threads
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
  runtime {
    docker: "None"
  }
  parameter_meta {
    matrix: "The matrix to adjust in the scool format. (default:\\nNone)"
    out_filename: "File name to save the adjusted matrix. (default: None)"
    chromosomes: "List of chromosomes to keep / remove (default: None)"
    create_submatrix: "Keep only first n matrices and remove the rest. Good\\nfor test data creation. (default: None)"
    action: "Keep, remove or mask the list of specified chromosomes\\n/ regions (default: keep)"
    threads: "Number of threads. Using the python multiprocessing\\nmodule. (default: 4)"
  }
  output {
    File out_stdout = stdout()
    File out_out_filename = "${in_out_filename}"
  }
}