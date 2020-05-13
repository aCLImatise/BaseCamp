version 1.0

task MglexCliTransform {
  input {
    File dataData
    Int precisionPrecision
    Float betaBeta
    Boolean rawRawProbability
    Boolean maximumMaximumLikelihood
    Boolean posteriorPosterior
    Boolean posteriorPosteriorRatio
    Boolean logarithmLogarithm
    Float classClassIndex
    String? transformTransform
    String? transformTransform
  }
  command <<<
    mglex-cli transform \
      ~{transformTransform} \
      ~{if defined(dataData) then ("--data " +  '"' + dataData + '"') else ""} \
      ~{if defined(precisionPrecision) then ("--precision " +  '"' + precisionPrecision + '"') else ""} \
      ~{if defined(betaBeta) then ("--beta " +  '"' + betaBeta + '"') else ""} \
      ~{true="--raw-probability" false="" rawRawProbability} \
      ~{true="--maximum-likelihood" false="" maximumMaximumLikelihood} \
      ~{true="--posterior" false="" posteriorPosterior} \
      ~{true="--posterior-ratio" false="" posteriorPosteriorRatio} \
      ~{true="--logarithm" false="" logarithmLogarithm} \
      ~{if defined(classClassIndex) then ("--class-index " +  '"' + classClassIndex + '"') else ""} \
      ~{transformTransform}
  >>>
}