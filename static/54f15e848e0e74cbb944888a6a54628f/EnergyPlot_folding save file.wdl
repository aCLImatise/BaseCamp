version 1.0

task EnergyPlotFolding save file {
  input {
    String? outputOutputFile
  }
  command <<<
    EnergyPlot folding save file \
      ~{outputOutputFile}
  >>>
}