version 1.0

task DimspyGetpeaklists {
  input {
    Int? single_multiple_hdf
    File? hdf_file_save
  }
  command <<<
    dimspy get_peaklists \
      ~{if defined(single_multiple_hdf) then ("--input " +  '"' + single_multiple_hdf + '"') else ""} \
      ~{if defined(hdf_file_save) then ("--output " +  '"' + hdf_file_save + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    single_multiple_hdf: "Single or Multiple HDF5 files that contain a peak\\nmatrix object from one of the processing steps."
    hdf_file_save: "HDF5 file to save the peaklist objects to.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}