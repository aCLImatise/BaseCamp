version 1.0

task ScpredGetFeatureSpace.R {
  input {
    String inputInputObject
    String predictionPredictionColumn
    String explainedExplainedVarLimit
    String correctionCorrectionMethod
    String significanceSignificanceThreshold
    String outputOutputPath
    String eigenvalueEigenvaluePlotPath
  }
  command <<<
    scpred_get_feature_space.R \
      ~{if defined(inputInputObject) then ("--input-object " +  '"' + inputInputObject + '"') else ""} \
      ~{if defined(predictionPredictionColumn) then ("--prediction-column " +  '"' + predictionPredictionColumn + '"') else ""} \
      ~{if defined(explainedExplainedVarLimit) then ("--explained-var-limit " +  '"' + explainedExplainedVarLimit + '"') else ""} \
      ~{if defined(correctionCorrectionMethod) then ("--correction-method " +  '"' + correctionCorrectionMethod + '"') else ""} \
      ~{if defined(significanceSignificanceThreshold) then ("--significance-threshold " +  '"' + significanceSignificanceThreshold + '"') else ""} \
      ~{if defined(outputOutputPath) then ("--output-path " +  '"' + outputOutputPath + '"') else ""} \
      ~{if defined(eigenvalueEigenvaluePlotPath) then ("--eigenvalue-plot-path " +  '"' + eigenvalueEigenvaluePlotPath + '"') else ""}
  >>>
}