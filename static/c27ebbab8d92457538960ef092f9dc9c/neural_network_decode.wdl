version 1.0

task NeuralNetworkDecode {
  command <<<
    neural_network_decode
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}