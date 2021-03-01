version 1.0

task DimspyRemovesamples {
  input {
    File? hdf_file_contains
    File? hdf_file_save
    String? sample_names
  }
  command <<<
    dimspy remove_samples \
      ~{if defined(hdf_file_contains) then ("--input " +  '"' + hdf_file_contains + '"') else ""} \
      ~{if defined(hdf_file_save) then ("--output " +  '"' + hdf_file_save + '"') else ""} \
      ~{if defined(sample_names) then ("--sample-names " +  '"' + sample_names + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    hdf_file_contains: "HDF5 file that contains a peak matrix object or list\\nof peaklist objects from one of the processing steps."
    hdf_file_save: "HDF5 file to save the peak matrix object or peaklist\\nobjects to."
    sample_names: "Sample name(s)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}