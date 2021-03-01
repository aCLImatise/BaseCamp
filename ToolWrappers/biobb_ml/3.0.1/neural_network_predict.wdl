version 1.0

task NeuralNetworkPredict {
  command <<<
    neural_network_predict
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}