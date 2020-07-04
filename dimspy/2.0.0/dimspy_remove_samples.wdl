version 1.0

task DimspyRemoveSamples {
  input {
    String? hdf_file_contains
    String? hdf_file_save
    String? sample_names
  }
  command <<<
    dimspy remove-samples \
      ~{if defined(hdf_file_contains) then ("--input " +  '"' + hdf_file_contains + '"') else ""} \
      ~{if defined(hdf_file_save) then ("--output " +  '"' + hdf_file_save + '"') else ""} \
      ~{if defined(sample_names) then ("--sample-names " +  '"' + sample_names + '"') else ""}
  >>>
  parameter_meta {
    hdf_file_contains: "HDF5 file that contains a peak matrix object or list of peaklist objects from one of the processing steps."
    hdf_file_save: "HDF5 file to save the peak matrix object or peaklist objects to."
    sample_names: "Sample name(s)"
  }
}