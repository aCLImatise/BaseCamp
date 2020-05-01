version 1.0

task ScpredEigenDecomp.R {
  input {
    String trainingTrainingMatrix
    String logLogTransform
    String trainingTrainingLabels
    String principalPrincipalComps
    String randomRandomSeed
    String outputOutputPath
  }
  command <<<
    scpred_eigen_decomp.R \
      ~{if defined(trainingTrainingMatrix) then ("--training-matrix " +  '"' + trainingTrainingMatrix + '"') else ""} \
      ~{if defined(logLogTransform) then ("--log-transform " +  '"' + logLogTransform + '"') else ""} \
      ~{if defined(trainingTrainingLabels) then ("--training-labels " +  '"' + trainingTrainingLabels + '"') else ""} \
      ~{if defined(principalPrincipalComps) then ("--principal-comps " +  '"' + principalPrincipalComps + '"') else ""} \
      ~{if defined(randomRandomSeed) then ("--random-seed " +  '"' + randomRandomSeed + '"') else ""} \
      ~{if defined(outputOutputPath) then ("--output-path " +  '"' + outputOutputPath + '"') else ""}
  >>>
}