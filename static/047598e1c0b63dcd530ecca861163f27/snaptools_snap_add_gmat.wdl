version 1.0

task SnaptoolsSnapaddgmat {
  input {
    File? snap_file
    File? gene_file
    Int? buffer_size
    Directory? tmp_folder
    String? verbose
  }
  command <<<
    snaptools snap_add_gmat \
      ~{if defined(snap_file) then ("--snap-file " +  '"' + snap_file + '"') else ""} \
      ~{if defined(gene_file) then ("--gene-file " +  '"' + gene_file + '"') else ""} \
      ~{if defined(buffer_size) then ("--buffer-size " +  '"' + buffer_size + '"') else ""} \
      ~{if defined(tmp_folder) then ("--tmp-folder " +  '"' + tmp_folder + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    snap_file: "snap file. (default: None)"
    gene_file: "bed file contains genes. (default: None)"
    buffer_size: "max number of barcodes be stored in the memory.\\n(default: 1000)"
    tmp_folder: "a directory to store temporary files. If not given,\\nsnaptools will automatically generate a temporary\\nlocation to store temporary files. (default: None)"
    verbose: "a boolen tag indicates output the progress. (default:\\nTrue)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}