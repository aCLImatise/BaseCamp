version 1.0

task SccafAssessMerger {
  input {
    String inputInputDirectory
    String roundsRoundsFile
    String outputOutputPlot
  }
  command <<<
    sccaf-assess-merger \
      ~{if defined(inputInputDirectory) then ("--input-directory " +  '"' + inputInputDirectory + '"') else ""} \
      ~{if defined(roundsRoundsFile) then ("--rounds-file " +  '"' + roundsRoundsFile + '"') else ""} \
      ~{if defined(outputOutputPlot) then ("--output-plot " +  '"' + outputOutputPlot + '"') else ""}
  >>>
}