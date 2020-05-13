version 1.0

task DeepsvrClassifyData {
  input {
    String preparedPreparedDataPath
    String modelModelFilePath
    String modelModelWeightsPath
    String predictionsPredictionsOutPath
  }
  command <<<
    deepsvr classify-data \
      ~{if defined(preparedPreparedDataPath) then ("--prepared-data-path " +  '"' + preparedPreparedDataPath + '"') else ""} \
      ~{if defined(modelModelFilePath) then ("--model-file-path " +  '"' + modelModelFilePath + '"') else ""} \
      ~{if defined(modelModelWeightsPath) then ("--model-weights-path " +  '"' + modelModelWeightsPath + '"') else ""} \
      ~{if defined(predictionsPredictionsOutPath) then ("--predictions-out-path " +  '"' + predictionsPredictionsOutPath + '"') else ""}
  >>>
}