version 1.0

task DimspyMergePeaklists {
  input {
    String? multiple_hdf_files
    String? directory_using_column
    File? file_list
  }
  command <<<
    dimspy merge-peaklists \
      ~{if defined(multiple_hdf_files) then ("--input " +  '"' + multiple_hdf_files + '"') else ""} \
      ~{if defined(directory_using_column) then ("--output " +  '"' + directory_using_column + '"') else ""} \
      ~{if defined(file_list) then ("--filelist " +  '"' + file_list + '"') else ""}
  >>>
  parameter_meta {
    multiple_hdf_files: "Multiple HDF5 files that contain peaklists or peak matrix from one of the processing steps."
    directory_using_column: "Directory (if using multilist column in filelist) or HDF5 file to write to."
    file_list: "Tab-delimited file that list all the data files (*.raw or *.mzml) and meta data (filename, technical replicate, class, batch, multiList)."
  }
}