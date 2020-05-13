version 1.0

task RsemPlotModelOutputPlotFile {
  input {
    String? sampleSampleName
    String? outputOutputPlotFile
  }
  command <<<
    rsem-plot-model output_plot_file \
      ~{sampleSampleName} \
      ~{outputOutputPlotFile}
  >>>
}