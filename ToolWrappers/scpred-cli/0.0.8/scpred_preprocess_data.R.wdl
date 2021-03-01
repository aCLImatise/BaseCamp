version 1.0

task ScpredPreprocessDataR {
  input {
    File? input_sce_object
    String? normalised_counts_slot
    File? output_matrix_object
    File? output_labels
  }
  command <<<
    scpred_preprocess_data_R \
      ~{if defined(input_sce_object) then ("--input-sce-object " +  '"' + input_sce_object + '"') else ""} \
      ~{if defined(normalised_counts_slot) then ("--normalised-counts-slot " +  '"' + normalised_counts_slot + '"') else ""} \
      ~{if defined(output_matrix_object) then ("--output-matrix-object " +  '"' + output_matrix_object + '"') else ""} \
      ~{if defined(output_labels) then ("--output-labels " +  '"' + output_labels + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_sce_object: "Path to the input SCE object in .rds format"
    normalised_counts_slot: "Name of the slot with normalised counts matrix in SCE object. Default: normcounts"
    output_matrix_object: "Path to the output matrix object in .rds format"
    output_labels: "Path to the metadata file with cell type labels in text format"
  }
  output {
    File out_stdout = stdout()
    File out_output_matrix_object = "${in_output_matrix_object}"
  }
}