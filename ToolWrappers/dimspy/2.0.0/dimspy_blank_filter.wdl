version 1.0

task DimspyBlankfilter {
  input {
    File? hdf_file_file
    File? hdf_file_save
    String? blank_label
    Int? min_fraction
    String? function
    Int? min_fold_change
    Boolean? remove_blank_samples
    File? labels
  }
  command <<<
    dimspy blank_filter \
      ~{if defined(hdf_file_file) then ("--input " +  '"' + hdf_file_file + '"') else ""} \
      ~{if defined(hdf_file_save) then ("--output " +  '"' + hdf_file_save + '"') else ""} \
      ~{if defined(blank_label) then ("--blank-label " +  '"' + blank_label + '"') else ""} \
      ~{if defined(min_fraction) then ("--min-fraction " +  '"' + min_fraction + '"') else ""} \
      ~{if defined(function) then ("--function " +  '"' + function + '"') else ""} \
      ~{if defined(min_fold_change) then ("--min-fold-change " +  '"' + min_fold_change + '"') else ""} \
      ~{if (remove_blank_samples) then "--remove-blank-samples" else ""} \
      ~{if defined(labels) then ("--labels " +  '"' + labels + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    hdf_file_file: "HDF5 file or tab-delimited file that contains a peak\\nmatrix (object)."
    hdf_file_save: "HDF5 file to save the peak matrix object to."
    blank_label: "Class label for blanks."
    min_fraction: "Minium fold change blank versus sample."
    function: "Select function to calculate blank intenstiy."
    min_fold_change: "Minium fold change blank versus sample."
    remove_blank_samples: "Remove blank samples from peak matrix."
    labels: "Tab delimited file with at least two columns named\\n'filename' and 'classLabel'.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}