version 1.0

task NeuralNetworkDecode {
  command <<<
    neural_network_decode
  >>>
  output {
    File out_stdout = stdout()
  }
}