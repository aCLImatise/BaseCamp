version 1.0

task DimspyCreatesamplelist {
  input {
    File? hdf_file_contains
    File? text_file_write
    String? delimiter
  }
  command <<<
    dimspy create_sample_list \
      ~{if defined(hdf_file_contains) then ("--input " +  '"' + hdf_file_contains + '"') else ""} \
      ~{if defined(text_file_write) then ("--output " +  '"' + text_file_write + '"') else ""} \
      ~{if defined(delimiter) then ("--delimiter " +  '"' + delimiter + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    hdf_file_contains: "HDF5 file that contains a peak matrix object from one\\nof the processing steps."
    text_file_write: "Text file to write to."
    delimiter: "Values on each line of the file are separated by this\\ncharacter.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}