version 1.0

task PhyloP {
  input {
    Boolean confidenceConfidenceInterval
    String chromChrom
    String logLog
    String seedSeed
    Boolean noNoPrune
    String nullNull
    Boolean posteriorPosterior
    Boolean fitFitModel
    String epsilonEpsilon
    String confidenceConfidenceInterval
    Boolean quantilesQuantiles
  }
  command <<<
    phyloP \
      ~{true="--confidence-interval" false="" confidenceConfidenceInterval} \
      ~{if defined(chromChrom) then ("--chrom " +  '"' + chromChrom + '"') else ""} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{true="--no-prune" false="" noNoPrune} \
      ~{if defined(nullNull) then ("--null " +  '"' + nullNull + '"') else ""} \
      ~{true="--posterior" false="" posteriorPosterior} \
      ~{true="--fit-model" false="" fitFitModel} \
      ~{if defined(epsilonEpsilon) then ("--epsilon " +  '"' + epsilonEpsilon + '"') else ""} \
      ~{if defined(confidenceConfidenceInterval) then ("--confidence-interval " +  '"' + confidenceConfidenceInterval + '"') else ""} \
      ~{true="--quantiles" false="" quantilesQuantiles}
  >>>
}