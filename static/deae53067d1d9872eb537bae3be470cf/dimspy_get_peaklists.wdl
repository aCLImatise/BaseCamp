version 1.0

task DimspyGetPeaklists {
  input {
    String? single_multiple_hdf
    String? hdf_file_save
  }
  command <<<
    dimspy get-peaklists \
      ~{if defined(single_multiple_hdf) then ("--input " +  '"' + single_multiple_hdf + '"') else ""} \
      ~{if defined(hdf_file_save) then ("--output " +  '"' + hdf_file_save + '"') else ""}
  >>>
  parameter_meta {
    single_multiple_hdf: "Single or Multiple HDF5 files that contain a peak matrix object from one of the processing steps."
    hdf_file_save: "HDF5 file to save the peaklist objects to."
  }
}