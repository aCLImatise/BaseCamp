version 1.0

task InteropDumptext {
  input {
    Boolean subsetSubset
    Boolean metricMetric
  }
  command <<<
    interop_dumptext \
      ~{true="--subset" false="" subsetSubset} \
      ~{true="--metric" false="" metricMetric}
  >>>
}