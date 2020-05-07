version 1.0

task CombineToolOutputs.R {
  input {
    String inputInputDir
    String topTopLabelsNum
    String exclusionsExclusions
    Boolean scoresScores
    String outputOutputTable
  }
  command <<<
    combine_tool_outputs.R \
      ~{if defined(inputInputDir) then ("--input-dir " +  '"' + inputInputDir + '"') else ""} \
      ~{if defined(topTopLabelsNum) then ("--top-labels-num " +  '"' + topTopLabelsNum + '"') else ""} \
      ~{if defined(exclusionsExclusions) then ("--exclusions " +  '"' + exclusionsExclusions + '"') else ""} \
      ~{true="--scores" false="" scoresScores} \
      ~{if defined(outputOutputTable) then ("--output-table " +  '"' + outputOutputTable + '"') else ""}
  >>>
}