version 1.0

task Sc3sc3calctransfsR {
  input {
    File? input_object_file
    File? output_object_file
  }
  command <<<
    sc3_sc3_calc_transfs_R \
      ~{if defined(input_object_file) then ("--input-object-file " +  '"' + input_object_file + '"') else ""} \
      ~{if defined(output_object_file) then ("--output-object-file " +  '"' + output_object_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_object_file: "File name in which a processed SC3 'SingleCellExperiment' object has been stored"
    output_object_file: "File name in which to store a transformed R object of type 'SingleCellExperiment' from SC3."
  }
  output {
    File out_stdout = stdout()
    File out_output_object_file = "${in_output_object_file}"
  }
}