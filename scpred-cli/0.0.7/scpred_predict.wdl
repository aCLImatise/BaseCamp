version 1.0

task ScpredPredict.R {
  input {
    String inputInputObject
    String predPredData
    String testTestLabels
    String cellCellTypesColumn
    String thresholdThresholdLevel
    String outputOutputPath
    String plotPlotPath
    String confusionConfusionTable
  }
  command <<<
    scpred_predict.R \
      ~{if defined(inputInputObject) then ("--input-object " +  '"' + inputInputObject + '"') else ""} \
      ~{if defined(predPredData) then ("--pred-data " +  '"' + predPredData + '"') else ""} \
      ~{if defined(testTestLabels) then ("--test-labels " +  '"' + testTestLabels + '"') else ""} \
      ~{if defined(cellCellTypesColumn) then ("--cell-types-column " +  '"' + cellCellTypesColumn + '"') else ""} \
      ~{if defined(thresholdThresholdLevel) then ("--threshold-level " +  '"' + thresholdThresholdLevel + '"') else ""} \
      ~{if defined(outputOutputPath) then ("--output-path " +  '"' + outputOutputPath + '"') else ""} \
      ~{if defined(plotPlotPath) then ("--plot-path " +  '"' + plotPlotPath + '"') else ""} \
      ~{if defined(confusionConfusionTable) then ("--confusion-table " +  '"' + confusionConfusionTable + '"') else ""}
  >>>
}