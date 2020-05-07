version 1.0

task ScaterRunPca.R {
  input {
    String inputInputObjectFile
    String nNComponents
    String methodMethod
    String ntopNtop
    String exprsExprsValues
    String featureFeatureSet
    String scaleScaleFeatures
    String useUseColdAtA
    String selectedSelectedVariables
    String detectDetectOutliers
    String outputOutputObjectFile
  }
  command <<<
    scater-run-pca.R \
      ~{if defined(inputInputObjectFile) then ("--input-object-file " +  '"' + inputInputObjectFile + '"') else ""} \
      ~{if defined(nNComponents) then ("--ncomponents " +  '"' + nNComponents + '"') else ""} \
      ~{if defined(methodMethod) then ("--method " +  '"' + methodMethod + '"') else ""} \
      ~{if defined(ntopNtop) then ("--ntop " +  '"' + ntopNtop + '"') else ""} \
      ~{if defined(exprsExprsValues) then ("--exprs-values " +  '"' + exprsExprsValues + '"') else ""} \
      ~{if defined(featureFeatureSet) then ("--feature-set " +  '"' + featureFeatureSet + '"') else ""} \
      ~{if defined(scaleScaleFeatures) then ("--scale-features " +  '"' + scaleScaleFeatures + '"') else ""} \
      ~{if defined(useUseColdAtA) then ("--use-coldata " +  '"' + useUseColdAtA + '"') else ""} \
      ~{if defined(selectedSelectedVariables) then ("--selected-variables " +  '"' + selectedSelectedVariables + '"') else ""} \
      ~{if defined(detectDetectOutliers) then ("--detect-outliers " +  '"' + detectDetectOutliers + '"') else ""} \
      ~{if defined(outputOutputObjectFile) then ("--output-object-file " +  '"' + outputOutputObjectFile + '"') else ""}
  >>>
}