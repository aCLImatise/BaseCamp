version 1.0

task ScaterExtractQcMetric.R {
  input {
    String inputInputObjectFile
    String metricMetric
    String outputOutputFile
  }
  command <<<
    scater-extract-qc-metric.R \
      ~{if defined(inputInputObjectFile) then ("--input-object-file " +  '"' + inputInputObjectFile + '"') else ""} \
      ~{if defined(metricMetric) then ("--metric " +  '"' + metricMetric + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""}
  >>>
}