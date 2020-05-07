version 1.0

task ProbabilityPlotOutput file {
  input {
    String? inputInputFile
    String? outputOutputFile
  }
  command <<<
    ProbabilityPlot output file \
      ~{inputInputFile} \
      ~{outputOutputFile}
  >>>
}