version 1.0

task DimspyHdf5PmToTxt {
  input {
    String? hdf_file_contains
    String? directory_peaklists_matrix
    String? attribute_name
    String? class_label_rsd
    String? delimiter
    String? representation_samples
    Boolean? comprehensive
  }
  command <<<
    dimspy hdf5-pm-to-txt \
      ~{if defined(hdf_file_contains) then ("--input " +  '"' + hdf_file_contains + '"') else ""} \
      ~{if defined(directory_peaklists_matrix) then ("--output " +  '"' + directory_peaklists_matrix + '"') else ""} \
      ~{if defined(attribute_name) then ("--attribute_name " +  '"' + attribute_name + '"') else ""} \
      ~{if defined(class_label_rsd) then ("--class-label-rsd " +  '"' + class_label_rsd + '"') else ""} \
      ~{if defined(delimiter) then ("--delimiter " +  '"' + delimiter + '"') else ""} \
      ~{if defined(representation_samples) then ("--representation-samples " +  '"' + representation_samples + '"') else ""} \
      ~{true="--comprehensive" false="" comprehensive}
  >>>
  parameter_meta {
    hdf_file_contains: "HDF5 file that contains a peak matrix object from one of the processing steps."
    directory_peaklists_matrix: "Directory (peaklists) or text file (peak matrix) to write to."
    attribute_name: "Type of matrix to print."
    class_label_rsd: "Class label to select samples for RSD calculatons (e.g. QC)."
    delimiter: "Values on each line of the file are separated by this character."
    representation_samples: "Should the rows or columns respresent the samples?"
    comprehensive: "Comprehensive version of the peak matrix"
  }
}