version 1.0

task Sc3sc3estimatekR {
  input {
    File? input_object_file
    File? output_object_file
    File? output_text_file
  }
  command <<<
    sc3_sc3_estimate_k_R \
      ~{if defined(input_object_file) then ("--input-object-file " +  '"' + input_object_file + '"') else ""} \
      ~{if defined(output_object_file) then ("--output-object-file " +  '"' + output_object_file + '"') else ""} \
      ~{if defined(output_text_file) then ("--output-text-file " +  '"' + output_text_file + '"') else ""}
  >>>
  parameter_meta {
    input_object_file: "File name in which a processed SC3 object can be found."
    output_object_file: "File name in which to store the SingleCellExperiment object with estimated k'."
    output_text_file: "Text file name in which to store the estimated k'."
  }
  output {
    File out_stdout = stdout()
    File out_output_object_file = "${in_output_object_file}"
    File out_output_text_file = "${in_output_text_file}"
  }
}