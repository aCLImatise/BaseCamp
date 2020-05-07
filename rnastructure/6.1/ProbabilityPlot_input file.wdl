version 1.0

task ProbabilityPlotInput file {
  input {
    String? outputOutputFile
  }
  command <<<
    ProbabilityPlot input file \
      ~{outputOutputFile}
  >>>
}