version 1.0

task ModelFit {
  input {
    String positivePositiveInputFile
    String negativeNegativeInputFile
    String outputOutputDir
    String modelModelFile
    String nNIter
    String nNInnerIterEstimator
    String nNActiveLearningIterations
    Int sizeSizePositive
    Int sizeSizeNegative
    String lowerLowerBoundThresholdPositive
    String lowerLowerBoundThresholdNegative
    String upperUpperBoundThresholdPositive
    String upperUpperBoundThresholdNegative
    Boolean fitFitVectorizer
    Int maxMaxTotalTime
    Boolean twoTwoStepsOptimization
    String scoringScoring
    String cvCv
    String nbitsNbits
    String randomRandomState
    String nNJobs
    String nNBlocks
    String blockBlockSize
    String prePreProcessorNJobs
    String prePreProcessorNBlocks
    String prePreProcessorBlockSize
  }
  command <<<
    model fit \
      ~{if defined(positivePositiveInputFile) then ("--positive-input-file " +  '"' + positivePositiveInputFile + '"') else ""} \
      ~{if defined(negativeNegativeInputFile) then ("--negative-input-file " +  '"' + negativeNegativeInputFile + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output-dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(modelModelFile) then ("--model-file " +  '"' + modelModelFile + '"') else ""} \
      ~{if defined(nNIter) then ("--n-iter " +  '"' + nNIter + '"') else ""} \
      ~{if defined(nNInnerIterEstimator) then ("--n-inner-iter-estimator " +  '"' + nNInnerIterEstimator + '"') else ""} \
      ~{if defined(nNActiveLearningIterations) then ("--n-active-learning-iterations " +  '"' + nNActiveLearningIterations + '"') else ""} \
      ~{if defined(sizeSizePositive) then ("--size-positive " +  '"' + sizeSizePositive + '"') else ""} \
      ~{if defined(sizeSizeNegative) then ("--size-negative " +  '"' + sizeSizeNegative + '"') else ""} \
      ~{if defined(lowerLowerBoundThresholdPositive) then ("--lower-bound-threshold-positive " +  '"' + lowerLowerBoundThresholdPositive + '"') else ""} \
      ~{if defined(lowerLowerBoundThresholdNegative) then ("--lower-bound-threshold-negative " +  '"' + lowerLowerBoundThresholdNegative + '"') else ""} \
      ~{if defined(upperUpperBoundThresholdPositive) then ("--upper-bound-threshold-positive " +  '"' + upperUpperBoundThresholdPositive + '"') else ""} \
      ~{if defined(upperUpperBoundThresholdNegative) then ("--upper-bound-threshold-negative " +  '"' + upperUpperBoundThresholdNegative + '"') else ""} \
      ~{true="--fit-vectorizer" false="" fitFitVectorizer} \
      ~{if defined(maxMaxTotalTime) then ("--max-total-time " +  '"' + maxMaxTotalTime + '"') else ""} \
      ~{true="--two-steps-optimization" false="" twoTwoStepsOptimization} \
      ~{if defined(scoringScoring) then ("--scoring " +  '"' + scoringScoring + '"') else ""} \
      ~{if defined(cvCv) then ("--cv " +  '"' + cvCv + '"') else ""} \
      ~{if defined(nbitsNbits) then ("--nbits " +  '"' + nbitsNbits + '"') else ""} \
      ~{if defined(randomRandomState) then ("--random-state " +  '"' + randomRandomState + '"') else ""} \
      ~{if defined(nNJobs) then ("--n-jobs " +  '"' + nNJobs + '"') else ""} \
      ~{if defined(nNBlocks) then ("--n-blocks " +  '"' + nNBlocks + '"') else ""} \
      ~{if defined(blockBlockSize) then ("-block-size " +  '"' + blockBlockSize + '"') else ""} \
      ~{if defined(prePreProcessorNJobs) then ("--pre-processor-n-jobs " +  '"' + prePreProcessorNJobs + '"') else ""} \
      ~{if defined(prePreProcessorNBlocks) then ("--pre-processor-n-blocks " +  '"' + prePreProcessorNBlocks + '"') else ""} \
      ~{if defined(prePreProcessorBlockSize) then ("--pre-processor-block-size " +  '"' + prePreProcessorBlockSize + '"') else ""}
  >>>
}