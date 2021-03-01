version 1.0

task DimspyGetaveragepeaklist {
  input {
    Int? single_multiple_hdf
    File? hdf_file_save
    String? name_peak_list
  }
  command <<<
    dimspy get_average_peaklist \
      ~{if defined(single_multiple_hdf) then ("--input " +  '"' + single_multiple_hdf + '"') else ""} \
      ~{if defined(hdf_file_save) then ("--output " +  '"' + hdf_file_save + '"') else ""} \
      ~{if defined(name_peak_list) then ("--name-peaklist " +  '"' + name_peak_list + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    single_multiple_hdf: "Single or Multiple HDF5 files that contain a peak\\nmatrix object from one of the processing steps."
    hdf_file_save: "HDF5 file to save the peaklist object to."
    name_peak_list: "Name of the peaklist.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}