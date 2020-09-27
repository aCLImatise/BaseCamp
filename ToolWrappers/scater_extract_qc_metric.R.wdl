version 1.0

task ScaterextractqcmetricR {
  input {
    File? input_object_file
    String? metric
    File? output_file
  }
  command <<<
    scater_extract_qc_metric_R \
      ~{if defined(input_object_file) then ("--input-object-file " +  '"' + input_object_file + '"') else ""} \
      ~{if defined(metric) then ("--metric " +  '"' + metric + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""}
  >>>
  parameter_meta {
    input_object_file: "singleCellExperiment object containing expression values and experimental information. Must have been appropriately prepared."
    metric: "Metric name."
    output_file: "Output file name, will be comma-separated cell,value."
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}