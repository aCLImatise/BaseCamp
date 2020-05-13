version 1.0

task ScaterRunTsne.R {
  input {
    String inputInputObjectFile
    String nNComponents
    String ntopNtop
    String featureFeatureSet
    String exprsExprsValues
    String scaleScaleFeatures
    String useUseDimRed
    String nNDimRed
    String perplexityPerplexity
    String pcPcA
    String initialInitialDims
    String outputOutputObjectFile
  }
  command <<<
    scater-run-tsne.R \
      ~{if defined(inputInputObjectFile) then ("--input-object-file " +  '"' + inputInputObjectFile + '"') else ""} \
      ~{if defined(nNComponents) then ("--ncomponents " +  '"' + nNComponents + '"') else ""} \
      ~{if defined(ntopNtop) then ("--ntop " +  '"' + ntopNtop + '"') else ""} \
      ~{if defined(featureFeatureSet) then ("--feature-set " +  '"' + featureFeatureSet + '"') else ""} \
      ~{if defined(exprsExprsValues) then ("--exprs-values " +  '"' + exprsExprsValues + '"') else ""} \
      ~{if defined(scaleScaleFeatures) then ("--scale-features " +  '"' + scaleScaleFeatures + '"') else ""} \
      ~{if defined(useUseDimRed) then ("--use-dimred " +  '"' + useUseDimRed + '"') else ""} \
      ~{if defined(nNDimRed) then ("--n-dimred " +  '"' + nNDimRed + '"') else ""} \
      ~{if defined(perplexityPerplexity) then ("--perplexity " +  '"' + perplexityPerplexity + '"') else ""} \
      ~{if defined(pcPcA) then ("--pca " +  '"' + pcPcA + '"') else ""} \
      ~{if defined(initialInitialDims) then ("--initial-dims " +  '"' + initialInitialDims + '"') else ""} \
      ~{if defined(outputOutputObjectFile) then ("--output-object-file " +  '"' + outputOutputObjectFile + '"') else ""}
  >>>
}