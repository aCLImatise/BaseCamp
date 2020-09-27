version 1.0

task NeuralNetworkPredict {
  command <<<
    neural_network_predict
  >>>
  output {
    File out_stdout = stdout()
  }
}