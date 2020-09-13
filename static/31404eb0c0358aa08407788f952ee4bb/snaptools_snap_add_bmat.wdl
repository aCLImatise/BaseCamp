version 1.0

task SnaptoolsSnapaddbmat {
  input {
    File? snap_file
    Array[String] bin_size_list
    Directory? tmp_folder
    String? verbose
  }
  command <<<
    snaptools snap_add_bmat \
      ~{if defined(snap_file) then ("--snap-file " +  '"' + snap_file + '"') else ""} \
      ~{if defined(bin_size_list) then ("--bin-size-list " +  '"' + bin_size_list + '"') else ""} \
      ~{if defined(tmp_folder) then ("--tmp-folder " +  '"' + tmp_folder + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""}
  >>>
  parameter_meta {
    snap_file: "snap file. (default: None)"
    bin_size_list: "a list of bin size(s) to create the cell-by-bin count\\nmatrix. The genome will be divided into bins of the\\nequal size of --bin-size-list to create the cell x bin\\ncount matrix. If more than one bin size are given,\\nsnaptools will generate a list of cell x bin matrices\\nof different resolutions and stored in the same snap\\nfile. (default: [5000])"
    tmp_folder: "a directory to store temporary files. If not given,\\nsnaptools will automatically generate a temporary\\nlocation to store temporary files. (default: None)"
    verbose: "a boolen tag indicates output the progress. (default:\\nTrue)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}