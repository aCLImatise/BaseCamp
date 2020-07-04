version 1.0

task Sc3Sc3CalcConsens.R {
  input {
    String? input_object_file
    String? output_text_file
    String? output_object_file
  }
  command <<<
    sc3-sc3-calc-consens.R \
      ~{if defined(input_object_file) then ("--input-object-file " +  '"' + input_object_file + '"') else ""} \
      ~{if defined(output_text_file) then ("--output-text-file " +  '"' + output_text_file + '"') else ""} \
      ~{if defined(output_object_file) then ("--output-object-file " +  '"' + output_object_file + '"') else ""}
  >>>
  parameter_meta {
    input_object_file: "File name in which a SC3 'SingleCellExperiment' object has been stored after kmeans clustering."
    output_text_file: "Text file name in which to store clusters, one column for every k value."
    output_object_file: "File name for R object of type 'SingleCellExperiment' from SC3 in which to store the consensus matrix."
  }
}