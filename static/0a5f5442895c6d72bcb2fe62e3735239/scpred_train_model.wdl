version 1.0

task ScpredTrainModel.R {
  input {
    String inputInputObject
    String trainTrainId
    String modelModel
    String resampleResampleMethod
    String iterIterNum
    String randomRandomSeed
    String allowAllowParallel
    String outputOutputPath
    String trainingTrainingResults
    String trainTrainProbsPlot
  }
  command <<<
    scpred_train_model.R \
      ~{if defined(inputInputObject) then ("--input-object " +  '"' + inputInputObject + '"') else ""} \
      ~{if defined(trainTrainId) then ("--train-id " +  '"' + trainTrainId + '"') else ""} \
      ~{if defined(modelModel) then ("--model " +  '"' + modelModel + '"') else ""} \
      ~{if defined(resampleResampleMethod) then ("--resample-method " +  '"' + resampleResampleMethod + '"') else ""} \
      ~{if defined(iterIterNum) then ("--iter-num " +  '"' + iterIterNum + '"') else ""} \
      ~{if defined(randomRandomSeed) then ("--random-seed " +  '"' + randomRandomSeed + '"') else ""} \
      ~{if defined(allowAllowParallel) then ("--allow-parallel " +  '"' + allowAllowParallel + '"') else ""} \
      ~{if defined(outputOutputPath) then ("--output-path " +  '"' + outputOutputPath + '"') else ""} \
      ~{if defined(trainingTrainingResults) then ("--training-results " +  '"' + trainingTrainingResults + '"') else ""} \
      ~{if defined(trainTrainProbsPlot) then ("--train-probs-plot " +  '"' + trainTrainProbsPlot + '"') else ""}
  >>>
}