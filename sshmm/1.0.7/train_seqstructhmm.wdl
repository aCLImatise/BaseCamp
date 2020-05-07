version 1.0

task TrainSeqstructhmm {
  input {
    String motifMotifLength
    Boolean randomRandom
    String flexibilityFlexibility
    String blockBlockSize
    String thresholdThreshold
    String jobJobName
    String outputOutputDirectory
    String terminationTerminationInterval
    Boolean noNoModelState
    Boolean onlyOnlyBestShape
    String? trainingTrainingSequences
    String? trainingTrainingStructures
  }
  command <<<
    train_seqstructhmm \
      ~{trainingTrainingSequences} \
      ~{if defined(motifMotifLength) then ("--motif_length " +  '"' + motifMotifLength + '"') else ""} \
      ~{true="--random" false="" randomRandom} \
      ~{if defined(flexibilityFlexibility) then ("--flexibility " +  '"' + flexibilityFlexibility + '"') else ""} \
      ~{if defined(blockBlockSize) then ("--block_size " +  '"' + blockBlockSize + '"') else ""} \
      ~{if defined(thresholdThreshold) then ("--threshold " +  '"' + thresholdThreshold + '"') else ""} \
      ~{if defined(jobJobName) then ("--job_name " +  '"' + jobJobName + '"') else ""} \
      ~{if defined(outputOutputDirectory) then ("--output_directory " +  '"' + outputOutputDirectory + '"') else ""} \
      ~{if defined(terminationTerminationInterval) then ("--termination_interval " +  '"' + terminationTerminationInterval + '"') else ""} \
      ~{true="--no_model_state" false="" noNoModelState} \
      ~{true="--only_best_shape" false="" onlyOnlyBestShape} \
      ~{trainingTrainingStructures}
  >>>
}