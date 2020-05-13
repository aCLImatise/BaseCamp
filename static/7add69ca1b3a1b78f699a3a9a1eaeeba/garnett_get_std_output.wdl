version 1.0

task GarnettGetStdOutput.R {
  input {
    String inputInputObject
    String cellCellIdField
    String predictedPredictedCellTypeField
    String classifierClassifier
    String outputOutputFilePath
  }
  command <<<
    garnett_get_std_output.R \
      ~{if defined(inputInputObject) then ("--input-object " +  '"' + inputInputObject + '"') else ""} \
      ~{if defined(cellCellIdField) then ("--cell-id-field " +  '"' + cellCellIdField + '"') else ""} \
      ~{if defined(predictedPredictedCellTypeField) then ("--predicted-cell-type-field " +  '"' + predictedPredictedCellTypeField + '"') else ""} \
      ~{if defined(classifierClassifier) then ("--classifier " +  '"' + classifierClassifier + '"') else ""} \
      ~{if defined(outputOutputFilePath) then ("--output-file-path " +  '"' + outputOutputFilePath + '"') else ""}
  >>>
}