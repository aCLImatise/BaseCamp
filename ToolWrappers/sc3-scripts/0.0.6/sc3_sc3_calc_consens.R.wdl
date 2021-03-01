version 1.0

task Sc3sc3calcconsensR {
  input {
    File? input_object_file
    File? output_text_file
    File? output_object_file
  }
  command <<<
    sc3_sc3_calc_consens_R \
      ~{if defined(input_object_file) then ("--input-object-file " +  '"' + input_object_file + '"') else ""} \
      ~{if defined(output_text_file) then ("--output-text-file " +  '"' + output_text_file + '"') else ""} \
      ~{if defined(output_object_file) then ("--output-object-file " +  '"' + output_object_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_object_file: "File name in which a SC3 'SingleCellExperiment' object has been stored after kmeans clustering."
    output_text_file: "Text file name in which to store clusters, one column for every k value."
    output_object_file: "File name for R object of type 'SingleCellExperiment' from SC3 in which to store the consensus matrix."
  }
  output {
    File out_stdout = stdout()
    File out_output_text_file = "${in_output_text_file}"
    File out_output_object_file = "${in_output_object_file}"
  }
}