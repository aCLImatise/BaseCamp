version 1.0

task ScaterIsOutlier.R {
  input {
    String metricMetricFile
    String nmNmAds
    String typeType
    String logLog
    Int minMinDiff
    String outputOutputFile
  }
  command <<<
    scater-is-outlier.R \
      ~{if defined(metricMetricFile) then ("--metric-file " +  '"' + metricMetricFile + '"') else ""} \
      ~{if defined(nmNmAds) then ("--nmads " +  '"' + nmNmAds + '"') else ""} \
      ~{if defined(typeType) then ("--type " +  '"' + typeType + '"') else ""} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""} \
      ~{if defined(minMinDiff) then ("--min-diff " +  '"' + minMinDiff + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""}
  >>>
}