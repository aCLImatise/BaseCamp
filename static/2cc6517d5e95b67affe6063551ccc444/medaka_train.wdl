version 1.0

task MedakaTrain {
  input {
    Boolean debugDebug
    Boolean quietQuiet
    String trainTrainName
    String modelModel
    String epochsEpochs
    String batchBatchSize
    Int maxMaxSamples
    Int miniMiniEpochs
    String seedSeed
    String threadsThreadsIo
    String deviceDevice
    String optimizerOptimizer
    String optimOptimArgs
    String validationValidationSplit
    Array[String]+ validationValidationFeatures
    String? featuresFeatures
  }
  command <<<
    medaka train \
      ~{featuresFeatures} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(trainTrainName) then ("--train_name " +  '"' + trainTrainName + '"') else ""} \
      ~{if defined(modelModel) then ("--model " +  '"' + modelModel + '"') else ""} \
      ~{if defined(epochsEpochs) then ("--epochs " +  '"' + epochsEpochs + '"') else ""} \
      ~{if defined(batchBatchSize) then ("--batch_size " +  '"' + batchBatchSize + '"') else ""} \
      ~{if defined(maxMaxSamples) then ("--max_samples " +  '"' + maxMaxSamples + '"') else ""} \
      ~{if defined(miniMiniEpochs) then ("--mini_epochs " +  '"' + miniMiniEpochs + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(threadsThreadsIo) then ("--threads_io " +  '"' + threadsThreadsIo + '"') else ""} \
      ~{if defined(deviceDevice) then ("--device " +  '"' + deviceDevice + '"') else ""} \
      ~{if defined(optimizerOptimizer) then ("--optimizer " +  '"' + optimizerOptimizer + '"') else ""} \
      ~{if defined(optimOptimArgs) then ("--optim_args " +  '"' + optimOptimArgs + '"') else ""} \
      ~{if defined(validationValidationSplit) then ("--validation_split " +  '"' + validationValidationSplit + '"') else ""} \
      ~{if defined(validationValidationFeatures) then ("--validation_features " +  '"' + validationValidationFeatures + '"') else ""}
  >>>
}