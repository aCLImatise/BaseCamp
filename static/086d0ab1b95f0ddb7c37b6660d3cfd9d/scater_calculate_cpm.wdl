version 1.0

task ScaterCalculateCpm.R {
  input {
    String? input_object_file
    String? exprs_values
    Int? size_factors
    String? output_object_file
    String? output_text_file
  }
  command <<<
    scater-calculate-cpm.R \
      ~{if defined(input_object_file) then ("--input-object-file " +  '"' + input_object_file + '"') else ""} \
      ~{if defined(exprs_values) then ("--exprs-values " +  '"' + exprs_values + '"') else ""} \
      ~{if defined(size_factors) then ("--size-factors " +  '"' + size_factors + '"') else ""} \
      ~{if defined(output_object_file) then ("--output-object-file " +  '"' + output_object_file + '"') else ""} \
      ~{if defined(output_text_file) then ("--output-text-file " +  '"' + output_text_file + '"') else ""}
  >>>
  parameter_meta {
    input_object_file: "File name containing serialized SingleCellExperiment object or count matrix."
    exprs_values: "A string specifying the assay of ‘object’ containing the count matrix, if ‘object’ is a SingleCellExperiment."
    size_factors: "A logical scalar indicating whether size factors in object should be used to compute effective library sizes. If not, all size factors are deleted and librarysize-based factors are used instead (seelibrarySizeFactors). Alternatively, a numeric vector containing a size factor for each cell, which is used in place ofsizeFactor(object)."
    output_object_file: "File name in which to store serialized R object of type 'Scater'.'"
    output_text_file: "File name in which to store CPM values."
  }
}