version 1.0

task DimspyReplicatefilter {
  input {
    File? hdf_file_peaklist
    File? hdf_file_save
    String? ppm
    Int? replicates
    Int? min_peak_present
    String? rsd_threshold
    File? file_list
    String? report
    Int? block_size
    Int? n_cpus
  }
  command <<<
    dimspy replicate_filter \
      ~{if defined(hdf_file_peaklist) then ("--input " +  '"' + hdf_file_peaklist + '"') else ""} \
      ~{if defined(hdf_file_save) then ("--output " +  '"' + hdf_file_save + '"') else ""} \
      ~{if defined(ppm) then ("--ppm " +  '"' + ppm + '"') else ""} \
      ~{if defined(replicates) then ("--replicates " +  '"' + replicates + '"') else ""} \
      ~{if defined(min_peak_present) then ("--min-peak-present " +  '"' + min_peak_present + '"') else ""} \
      ~{if defined(rsd_threshold) then ("--rsd-threshold " +  '"' + rsd_threshold + '"') else ""} \
      ~{if defined(file_list) then ("--filelist " +  '"' + file_list + '"') else ""} \
      ~{if defined(report) then ("--report " +  '"' + report + '"') else ""} \
      ~{if defined(block_size) then ("--block-size " +  '"' + block_size + '"') else ""} \
      ~{if defined(n_cpus) then ("--ncpus " +  '"' + n_cpus + '"') else ""}
  >>>
  parameter_meta {
    hdf_file_peaklist: "HDF5 file (Peaklist objects) from step 'process-scans'\\nor directory path that contains tab-delimited\\npeaklists."
    hdf_file_save: "HDF5 file to save the peaklist objects to."
    ppm: "Mass tolerance in Parts per million to group peaks\\nacross scans / mass spectra."
    replicates: "Number of technical replicates."
    min_peak_present: "Minimum number of times a peak has to be present\\n(number) across technical replicates."
    rsd_threshold: "Maximum threshold - Relative Standard Deviation."
    file_list: "Tab-delimited file that list all the data files (*.raw\\nor *.mzml) and meta data (filename, technical\\nreplicate, class, batch)."
    report: "Summary/Report of processed mass spectra"
    block_size: "The size of each block of peaks to perform clustering\\non."
    n_cpus: "Number of central processing units (CPUs).\\n"
  }
  output {
    File out_stdout = stdout()
  }
}