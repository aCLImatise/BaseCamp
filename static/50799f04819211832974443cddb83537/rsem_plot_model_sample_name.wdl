version 1.0

task RsemPlotModelSampleName {
  input {
    String? outputOutputPlotFile
  }
  command <<<
    rsem-plot-model sample_name \
      ~{outputOutputPlotFile}
  >>>
}