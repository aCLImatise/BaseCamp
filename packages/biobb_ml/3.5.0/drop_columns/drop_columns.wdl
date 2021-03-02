version 1.0

task DropColumns {
  input {
    File? config
    File? input_dataset_path
    File? output_dataset_path
  }
  command <<<
    drop_columns \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(input_dataset_path) then ("--input_dataset_path " +  '"' + input_dataset_path + '"') else ""} \
      ~{if defined(output_dataset_path) then ("--output_dataset_path " +  '"' + output_dataset_path + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/biobb_ml:3.5.0--pyhafabc51_3"
  }
  parameter_meta {
    config: "Configuration file"
    input_dataset_path: "Path to the input dataset. Accepted formats: csv."
    output_dataset_path: "Path to the output dataset. Accepted formats: csv.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_dataset_path = "${in_output_dataset_path}"
  }
}