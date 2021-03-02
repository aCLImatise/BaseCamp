version 1.0

task ScatercalculatecpmR {
  input {
    File? input_object_file
    String? exprs_values
    Int? size_factors
    File? output_object_file
    File? output_text_file
  }
  command <<<
    scater_calculate_cpm_R \
      ~{if defined(input_object_file) then ("--input-object-file " +  '"' + input_object_file + '"') else ""} \
      ~{if defined(exprs_values) then ("--exprs-values " +  '"' + exprs_values + '"') else ""} \
      ~{if defined(size_factors) then ("--size-factors " +  '"' + size_factors + '"') else ""} \
      ~{if defined(output_object_file) then ("--output-object-file " +  '"' + output_object_file + '"') else ""} \
      ~{if defined(output_text_file) then ("--output-text-file " +  '"' + output_text_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_object_file: "File name containing serialized SingleCellExperiment object or count matrix."
    exprs_values: "A string specifying the assay of ‘object’ containing the count matrix, if ‘object’ is a SingleCellExperiment."
    size_factors: "A logical scalar indicating whether size factors in object should be used to compute effective library sizes. If not, all size factors are deleted and librarysize-based factors are used instead (seelibrarySizeFactors). Alternatively, a numeric vector containing a size factor for each cell, which is used in place ofsizeFactor(object)."
    output_object_file: "File name in which to store serialized R object of type 'Scater'.'"
    output_text_file: "File name in which to store CPM values."
  }
  output {
    File out_stdout = stdout()
    File out_output_object_file = "${in_output_object_file}"
    File out_output_text_file = "${in_output_text_file}"
  }
}