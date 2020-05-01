version 1.0

task ScpredGetStdOutput.R {
  input {
    String predictionsPredictionsFile
    String cellCellIdCol
    Boolean getGetScores
    String classifierClassifier
    String outputOutputTable
  }
  command <<<
    scpred_get_std_output.R \
      ~{if defined(predictionsPredictionsFile) then ("--predictions-file " +  '"' + predictionsPredictionsFile + '"') else ""} \
      ~{if defined(cellCellIdCol) then ("--cell-id-col " +  '"' + cellCellIdCol + '"') else ""} \
      ~{true="--get-scores" false="" getGetScores} \
      ~{if defined(classifierClassifier) then ("--classifier " +  '"' + classifierClassifier + '"') else ""} \
      ~{if defined(outputOutputTable) then ("--output-table " +  '"' + outputOutputTable + '"') else ""}
  >>>
}