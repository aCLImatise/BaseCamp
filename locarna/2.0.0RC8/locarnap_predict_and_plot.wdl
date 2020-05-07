version 1.0

task LocarnapPredictAndPlot.pl {
  input {
    String? annotationAnnotationFile
  }
  command <<<
    locarnap-predict-and-plot.pl \
      ~{annotationAnnotationFile}
  >>>
}