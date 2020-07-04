version 1.0

task LocarnapPredictAndPlot.pl {
  input {
    String? annotation_file
  }
  command <<<
    locarnap-predict-and-plot.pl \
      ~{annotation_file}
  >>>
  parameter_meta {
    annotation_file: ""
  }
}