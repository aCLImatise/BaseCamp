version 1.0

task ScaterExtractQcMetric.R {
  input {
    String? input_object_file
    String? metric
    String? output_file
  }
  command <<<
    scater-extract-qc-metric.R \
      ~{if defined(input_object_file) then ("--input-object-file " +  '"' + input_object_file + '"') else ""} \
      ~{if defined(metric) then ("--metric " +  '"' + metric + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""}
  >>>
  parameter_meta {
    input_object_file: "singleCellExperiment object containing expression values and experimental information. Must have been appropriately prepared."
    metric: "Metric name."
    output_file: "Output file name, will be comma-separated cell,value."
  }
}