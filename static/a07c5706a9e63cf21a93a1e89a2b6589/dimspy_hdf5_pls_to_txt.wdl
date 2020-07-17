version 1.0

task DimspyHdf5PlsToTxt {
  input {
    String? hdf_file_contains
    String? directory_to_write
    String? delimiter
  }
  command <<<
    dimspy hdf5-pls-to-txt \
      ~{if defined(hdf_file_contains) then ("--input " +  '"' + hdf_file_contains + '"') else ""} \
      ~{if defined(directory_to_write) then ("--output " +  '"' + directory_to_write + '"') else ""} \
      ~{if defined(delimiter) then ("--delimiter " +  '"' + delimiter + '"') else ""}
  >>>
  parameter_meta {
    hdf_file_contains: "HDF5 file that contains a list of peaklist objects from one of the processing steps."
    directory_to_write: "Directory to write to."
    delimiter: "Values on each line of the file are separated by this character."
  }
}