version 1.0

task DimspySamplefilter {
  input {
    File? hdf_file_file
    File? hdf_file_save
    Int? min_fraction
    Boolean? within
    String? rsd_threshold
    String? qc_label
    File? labels
  }
  command <<<
    dimspy sample_filter \
      ~{if defined(hdf_file_file) then ("--input " +  '"' + hdf_file_file + '"') else ""} \
      ~{if defined(hdf_file_save) then ("--output " +  '"' + hdf_file_save + '"') else ""} \
      ~{if defined(min_fraction) then ("--min-fraction " +  '"' + min_fraction + '"') else ""} \
      ~{if (within) then "--within" else ""} \
      ~{if defined(rsd_threshold) then ("--rsd-threshold " +  '"' + rsd_threshold + '"') else ""} \
      ~{if defined(qc_label) then ("--qc-label " +  '"' + qc_label + '"') else ""} \
      ~{if defined(labels) then ("--labels " +  '"' + labels + '"') else ""}
  >>>
  parameter_meta {
    hdf_file_file: "HDF5 file or tab-delimited file that contains a peak\\nmatrix."
    hdf_file_save: "HDF5 file to save the peak matrix object to."
    min_fraction: "Minimum percentage of samples a peak has to be\\npresent."
    within: "Apply sample filter within each sample class."
    rsd_threshold: "Peaks where the associated QC peaks are above this\\nthreshold will be removed."
    qc_label: "Class label for QCs"
    labels: "Tab delimited file with at least two columns named\\n'filename' and 'classLabel'.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}