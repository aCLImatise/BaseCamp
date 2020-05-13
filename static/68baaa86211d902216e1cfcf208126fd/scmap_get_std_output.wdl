version 1.0

task ScmapGetStdOutput.R {
  input {
    String predictionsPredictionsFile
    String outputOutputTable
    Boolean includeIncludeScores
    String indexIndex
    String toolTool
    String simSimColName
  }
  command <<<
    scmap_get_std_output.R \
      ~{if defined(predictionsPredictionsFile) then ("--predictions-file " +  '"' + predictionsPredictionsFile + '"') else ""} \
      ~{if defined(outputOutputTable) then ("--output-table " +  '"' + outputOutputTable + '"') else ""} \
      ~{true="--include-scores" false="" includeIncludeScores} \
      ~{if defined(indexIndex) then ("--index " +  '"' + indexIndex + '"') else ""} \
      ~{if defined(toolTool) then ("--tool " +  '"' + toolTool + '"') else ""} \
      ~{if defined(simSimColName) then ("--sim-col-name " +  '"' + simSimColName + '"') else ""}
  >>>
}