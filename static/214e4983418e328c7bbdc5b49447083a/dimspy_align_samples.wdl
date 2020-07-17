version 1.0

task DimspyAlignSamples {
  input {
    String? hdf_file_peaklist
    String? hdf_file_save
    String? ppm
    File? file_list
    String? block_size
    String? n_cpus
  }
  command <<<
    dimspy align-samples \
      ~{if defined(hdf_file_peaklist) then ("--input " +  '"' + hdf_file_peaklist + '"') else ""} \
      ~{if defined(hdf_file_save) then ("--output " +  '"' + hdf_file_save + '"') else ""} \
      ~{if defined(ppm) then ("--ppm " +  '"' + ppm + '"') else ""} \
      ~{if defined(file_list) then ("--filelist " +  '"' + file_list + '"') else ""} \
      ~{if defined(block_size) then ("--block-size " +  '"' + block_size + '"') else ""} \
      ~{if defined(n_cpus) then ("--ncpus " +  '"' + n_cpus + '"') else ""}
  >>>
  parameter_meta {
    hdf_file_peaklist: "HDF5 file (Peaklist objects) from step 'process-scans / replicate-filter' or directory path that contains tab-delimited peaklists."
    hdf_file_save: "HDF5 file to save the peak matrix object to."
    ppm: "Mass tolerance in parts per million to group peaks across scans / mass spectra."
    file_list: "Tab-delimited file that include the name of the samples and meta data.Column names: filename, replicate, batch, injectionOrder, classLabel."
    block_size: "The size of each block of peaks to perform clustering on."
    n_cpus: "Number of central processing units (CPUs)."
  }
}