version 1.0

task DimspySampleFilter {
  input {
    String? hdf_file_tabdelimited
    String? hdf_file_save
    Int? min_fraction
    Boolean? within
    String? rsd_threshold
    String? qc_label
    String? labels
  }
  command <<<
    dimspy sample-filter \
      ~{if defined(hdf_file_tabdelimited) then ("--input " +  '"' + hdf_file_tabdelimited + '"') else ""} \
      ~{if defined(hdf_file_save) then ("--output " +  '"' + hdf_file_save + '"') else ""} \
      ~{if defined(min_fraction) then ("--min-fraction " +  '"' + min_fraction + '"') else ""} \
      ~{true="--within" false="" within} \
      ~{if defined(rsd_threshold) then ("--rsd-threshold " +  '"' + rsd_threshold + '"') else ""} \
      ~{if defined(qc_label) then ("--qc-label " +  '"' + qc_label + '"') else ""} \
      ~{if defined(labels) then ("--labels " +  '"' + labels + '"') else ""}
  >>>
  parameter_meta {
    hdf_file_tabdelimited: "HDF5 file or tab-delimited file that contains a peak matrix."
    hdf_file_save: "HDF5 file to save the peak matrix object to."
    min_fraction: "Minimum percentage of samples a peak has to be present."
    within: "Apply sample filter within each sample class."
    rsd_threshold: "Peaks where the associated QC peaks are above this threshold will be removed."
    qc_label: "Class label for QCs"
    labels: "Tab delimited file with at least two columns named 'filename' and 'classLabel'."
  }
}