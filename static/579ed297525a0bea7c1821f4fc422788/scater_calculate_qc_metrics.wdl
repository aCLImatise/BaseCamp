version 1.0

task ScaterCalculateQcMetrics.R {
  input {
    String inputInputObjectFile
    String exprsExprsValues
    String featureFeatureControls
    String cellCellControls
    String percentPercentTop
    String detectionDetectionLimit
    String useUseSpikes
    String outputOutputObjectFile
  }
  command <<<
    scater-calculate-qc-metrics.R \
      ~{if defined(inputInputObjectFile) then ("--input-object-file " +  '"' + inputInputObjectFile + '"') else ""} \
      ~{if defined(exprsExprsValues) then ("--exprs-values " +  '"' + exprsExprsValues + '"') else ""} \
      ~{if defined(featureFeatureControls) then ("--feature-controls " +  '"' + featureFeatureControls + '"') else ""} \
      ~{if defined(cellCellControls) then ("--cell-controls " +  '"' + cellCellControls + '"') else ""} \
      ~{if defined(percentPercentTop) then ("--percent-top " +  '"' + percentPercentTop + '"') else ""} \
      ~{if defined(detectionDetectionLimit) then ("--detection-limit " +  '"' + detectionDetectionLimit + '"') else ""} \
      ~{if defined(useUseSpikes) then ("--use-spikes " +  '"' + useUseSpikes + '"') else ""} \
      ~{if defined(outputOutputObjectFile) then ("--output-object-file " +  '"' + outputOutputObjectFile + '"') else ""}
  >>>
}