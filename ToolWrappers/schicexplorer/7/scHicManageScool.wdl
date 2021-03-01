version 1.0

task ScHicManageScool {
  input {
    String? matrix
    File? out_filename
    String? action
    File? cell_list
    Int? threads
  }
  command <<<
    scHicManageScool \
      ~{if defined(matrix) then ("--matrix " +  '"' + matrix + '"') else ""} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""} \
      ~{if defined(action) then ("--action " +  '"' + action + '"') else ""} \
      ~{if defined(cell_list) then ("--cellList " +  '"' + cell_list + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/schicexplorer:7--py_0"
  }
  parameter_meta {
    matrix: "The scool matrix (default: None)"
    out_filename: "File name to save the exported matrix, in case of\\nextract the folder name (default: None)"
    action: "The different actions this tool is able to do. Update\\ncan be used to update scool files from scHiCExplorer\\nversion 4 to the file format as it is used starting\\nfrom scHiCExplorer 5.ExtractToCool extracts either a\\ngiven scool file to individual cool files or only a\\nsubset given by a list. ExtractScool requires a list\\nof internal cells that should be copied to a new scool\\nfile. (default: none)"
    cell_list: "A text file with the cells that should be extracted or\\ncopied to the a new scool file. (default: None)"
    threads: "Number of threads. Using the python multiprocessing\\nmodule. (default: 4)"
  }
  output {
    File out_stdout = stdout()
    File out_out_filename = "${in_out_filename}"
  }
}