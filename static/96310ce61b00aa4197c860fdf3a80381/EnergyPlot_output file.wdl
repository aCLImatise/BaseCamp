version 1.0

task EnergyPlotOutput file {
  input {
    String? foldingFoldingSaveFile
    String? outputOutputFile
  }
  command <<<
    EnergyPlot output file \
      ~{foldingFoldingSaveFile} \
      ~{outputOutputFile}
  >>>
}