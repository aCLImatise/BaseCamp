version 1.0

task Nanonettrain {
  input {
    String trainTrain
    String trainTrainList
    String sectionSection
    String valVal
    String valValList
    String workspaceWorkspace
    String outputOutput
    String modelModel
    String kmKmErLength
    String basesBases
    String deviceDevice
    Boolean noNoCuda
    Array[String]+ windowWindow
    Int maxMaxEpochs
    Int maxMaxEpochsNoBest
    String validateValidateEvery
    String parallelParallelSequences
    String learningLearningRate
    String momentumMomentum
    String cacheCachePath
  }
  command <<<
    nanonettrain \
      ~{if defined(trainTrain) then ("--train " +  '"' + trainTrain + '"') else ""} \
      ~{if defined(trainTrainList) then ("--train_list " +  '"' + trainTrainList + '"') else ""} \
      ~{if defined(sectionSection) then ("--section " +  '"' + sectionSection + '"') else ""} \
      ~{if defined(valVal) then ("--val " +  '"' + valVal + '"') else ""} \
      ~{if defined(valValList) then ("--val_list " +  '"' + valValList + '"') else ""} \
      ~{if defined(workspaceWorkspace) then ("--workspace " +  '"' + workspaceWorkspace + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(modelModel) then ("--model " +  '"' + modelModel + '"') else ""} \
      ~{if defined(kmKmErLength) then ("--kmer_length " +  '"' + kmKmErLength + '"') else ""} \
      ~{if defined(basesBases) then ("--bases " +  '"' + basesBases + '"') else ""} \
      ~{if defined(deviceDevice) then ("--device " +  '"' + deviceDevice + '"') else ""} \
      ~{true="--no-cuda" false="" noNoCuda} \
      ~{if defined(windowWindow) then ("--window " +  '"' + windowWindow + '"') else ""} \
      ~{if defined(maxMaxEpochs) then ("--max_epochs " +  '"' + maxMaxEpochs + '"') else ""} \
      ~{if defined(maxMaxEpochsNoBest) then ("--max_epochs_no_best " +  '"' + maxMaxEpochsNoBest + '"') else ""} \
      ~{if defined(validateValidateEvery) then ("--validate_every " +  '"' + validateValidateEvery + '"') else ""} \
      ~{if defined(parallelParallelSequences) then ("--parallel_sequences " +  '"' + parallelParallelSequences + '"') else ""} \
      ~{if defined(learningLearningRate) then ("--learning_rate " +  '"' + learningLearningRate + '"') else ""} \
      ~{if defined(momentumMomentum) then ("--momentum " +  '"' + momentumMomentum + '"') else ""} \
      ~{if defined(cacheCachePath) then ("--cache_path " +  '"' + cacheCachePath + '"') else ""}
  >>>
}