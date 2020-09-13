version 1.0

task DimspyMvsamplefilter {
  input {
    File? hdf_file_file
    File? hdf_file_save
    Int? max_fraction
  }
  command <<<
    dimspy mv_sample_filter \
      ~{if defined(hdf_file_file) then ("--input " +  '"' + hdf_file_file + '"') else ""} \
      ~{if defined(hdf_file_save) then ("--output " +  '"' + hdf_file_save + '"') else ""} \
      ~{if defined(max_fraction) then ("--max-fraction " +  '"' + max_fraction + '"') else ""}
  >>>
  parameter_meta {
    hdf_file_file: "HDF5 file file that contains a peak matrix object."
    hdf_file_save: "HDF5 file to save the peak matrix object to."
    max_fraction: "Maximum percentage of missing values allowed across a\\nsample.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}