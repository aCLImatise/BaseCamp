version 1.0

task DimspySampleFilter {
  input {
    String inputInput
    String outputOutput
    Int minMinFraction
    Boolean withinWithin
    String rsdRsdThreshold
    String qcQcLabel
    String labelsLabels
  }
  command <<<
    dimspy sample-filter \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(minMinFraction) then ("--min-fraction " +  '"' + minMinFraction + '"') else ""} \
      ~{true="--within" false="" withinWithin} \
      ~{if defined(rsdRsdThreshold) then ("--rsd-threshold " +  '"' + rsdRsdThreshold + '"') else ""} \
      ~{if defined(qcQcLabel) then ("--qc-label " +  '"' + qcQcLabel + '"') else ""} \
      ~{if defined(labelsLabels) then ("--labels " +  '"' + labelsLabels + '"') else ""}
  >>>
}