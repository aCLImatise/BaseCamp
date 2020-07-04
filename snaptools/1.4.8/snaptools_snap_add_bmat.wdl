version 1.0

task SnaptoolsSnapAddBmat {
  input {
    String? snap_file
    Array[String] bin_size_list
    String? tmp_folder
    String? verbose
  }
  command <<<
    snaptools snap-add-bmat \
      ~{if defined(snap_file) then ("--snap-file " +  '"' + snap_file + '"') else ""} \
      ~{if defined(bin_size_list) then ("--bin-size-list " +  '"' + bin_size_list + '"') else ""} \
      ~{if defined(tmp_folder) then ("--tmp-folder " +  '"' + tmp_folder + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""}
  >>>
  parameter_meta {
    snap_file: "snap file. (default: None)"
    bin_size_list: "a list of bin size(s) to create the cell-by-bin count matrix. The genome will be divided into bins of the equal size of --bin-size-list to create the cell x bin count matrix. If more than one bin size are given, snaptools will generate a list of cell x bin matrices of different resolutions and stored in the same snap file. (default: [5000])"
    tmp_folder: "a directory to store temporary files. If not given, snaptools will automatically generate a temporary location to store temporary files. (default: None)"
    verbose: "a boolen tag indicates output the progress. (default: True)"
  }
}