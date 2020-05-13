version 1.0

task ScadenTrain {
  input {
    String trainTrainDatasets
    String modelModelDir
    Int batchBatchSize
    Float learningLearningRate
    Int stepsSteps
  }
  command <<<
    scaden train \
      ~{if defined(trainTrainDatasets) then ("--train_datasets " +  '"' + trainTrainDatasets + '"') else ""} \
      ~{if defined(modelModelDir) then ("--model_dir " +  '"' + modelModelDir + '"') else ""} \
      ~{if defined(batchBatchSize) then ("--batch_size " +  '"' + batchBatchSize + '"') else ""} \
      ~{if defined(learningLearningRate) then ("--learning_rate " +  '"' + learningLearningRate + '"') else ""} \
      ~{if defined(stepsSteps) then ("--steps " +  '"' + stepsSteps + '"') else ""}
  >>>
}