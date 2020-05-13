version 1.0

task MotifFit {
  input {
    String inputInputFile
    String trainingTrainingSize
    String modelModelFilename
    String outputOutputDir
    Int minMinSubarraySize
    Int maxMaxSubarraySize
    Int minMinMotifCount
    Int minMinClusterSize
    String randomRandomState
    Boolean logLogFullState
    String negativeNegativeInputFile
    String negativeNegativeRatio
    String shuffleShuffleOrder
    String nbitsNbits
    String complexityComplexity
    String nNIterSearch
    String nNJobs
    String nNBlocks
    String blockBlockSize
    String prePreProcessorNJobs
    String prePreProcessorNBlocks
    String prePreProcessorBlockSize
  }
  command <<<
    motif fit \
      ~{if defined(inputInputFile) then ("--input-file " +  '"' + inputInputFile + '"') else ""} \
      ~{if defined(trainingTrainingSize) then ("--training-size " +  '"' + trainingTrainingSize + '"') else ""} \
      ~{if defined(modelModelFilename) then ("--model-filename " +  '"' + modelModelFilename + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output-dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(minMinSubarraySize) then ("--min-subarray-size " +  '"' + minMinSubarraySize + '"') else ""} \
      ~{if defined(maxMaxSubarraySize) then ("--max-subarray-size " +  '"' + maxMaxSubarraySize + '"') else ""} \
      ~{if defined(minMinMotifCount) then ("--min-motif-count " +  '"' + minMinMotifCount + '"') else ""} \
      ~{if defined(minMinClusterSize) then ("--min-cluster-size " +  '"' + minMinClusterSize + '"') else ""} \
      ~{if defined(randomRandomState) then ("--random-state " +  '"' + randomRandomState + '"') else ""} \
      ~{true="--log-full-state" false="" logLogFullState} \
      ~{if defined(negativeNegativeInputFile) then ("--negative-input-file " +  '"' + negativeNegativeInputFile + '"') else ""} \
      ~{if defined(negativeNegativeRatio) then ("--negative-ratio " +  '"' + negativeNegativeRatio + '"') else ""} \
      ~{if defined(shuffleShuffleOrder) then ("--shuffle-order " +  '"' + shuffleShuffleOrder + '"') else ""} \
      ~{if defined(nbitsNbits) then ("--nbits " +  '"' + nbitsNbits + '"') else ""} \
      ~{if defined(complexityComplexity) then ("--complexity " +  '"' + complexityComplexity + '"') else ""} \
      ~{if defined(nNIterSearch) then ("--n-iter-search " +  '"' + nNIterSearch + '"') else ""} \
      ~{if defined(nNJobs) then ("--n-jobs " +  '"' + nNJobs + '"') else ""} \
      ~{if defined(nNBlocks) then ("--n-blocks " +  '"' + nNBlocks + '"') else ""} \
      ~{if defined(blockBlockSize) then ("-block-size " +  '"' + blockBlockSize + '"') else ""} \
      ~{if defined(prePreProcessorNJobs) then ("--pre-processor-n-jobs " +  '"' + prePreProcessorNJobs + '"') else ""} \
      ~{if defined(prePreProcessorNBlocks) then ("--pre-processor-n-blocks " +  '"' + prePreProcessorNBlocks + '"') else ""} \
      ~{if defined(prePreProcessorBlockSize) then ("--pre-processor-block-size " +  '"' + prePreProcessorBlockSize + '"') else ""}
  >>>
}