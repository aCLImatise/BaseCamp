version 1.0

task ScHicConvertFormat {
  input {
    String? matrix
    Directory? output_folder
    File? output_cell_name_file
    Int? output_chromosome_size
    String? format
    Int? threads
  }
  command <<<
    scHicConvertFormat \
      ~{if defined(matrix) then ("--matrix " +  '"' + matrix + '"') else ""} \
      ~{if defined(output_folder) then ("--outputFolder " +  '"' + output_folder + '"') else ""} \
      ~{if defined(output_cell_name_file) then ("--outputCellNameFile " +  '"' + output_cell_name_file + '"') else ""} \
      ~{if defined(output_chromosome_size) then ("--outputChromosomeSize " +  '"' + output_chromosome_size + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/schicexplorer:7--py_0"
  }
  parameter_meta {
    matrix: "The matrix to adjust in the scool format. (default:\\nNone)"
    output_folder: "Folder name to save the files (default: .)"
    output_cell_name_file: "File name to save the cell names and their location\\n(default: cellNameFile.txt)"
    output_chromosome_size: "File name to save the chromosome sizes (default:\\nchromosomeSize.txt)"
    format: "The format of the output files (default: schicluster)"
    threads: "Number of threads. Using the python multiprocessing\\nmodule. (default: 4)"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_folder = "${in_output_folder}"
    File out_output_cell_name_file = "${in_output_cell_name_file}"
  }
}