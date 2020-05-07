version 1.0

task DeepsvrTrainClassifier {
  input {
    String trainingTrainingFilePath
    String labelLabelFilePath
    String modelModelOutFilePath
    String weightsWeightsOutFilePath
  }
  command <<<
    deepsvr train-classifier \
      ~{if defined(trainingTrainingFilePath) then ("--training-file-path " +  '"' + trainingTrainingFilePath + '"') else ""} \
      ~{if defined(labelLabelFilePath) then ("--label-file-path " +  '"' + labelLabelFilePath + '"') else ""} \
      ~{if defined(modelModelOutFilePath) then ("--model-out-file-path " +  '"' + modelModelOutFilePath + '"') else ""} \
      ~{if defined(weightsWeightsOutFilePath) then ("--weights-out-file-path " +  '"' + weightsWeightsOutFilePath + '"') else ""}
  >>>
}