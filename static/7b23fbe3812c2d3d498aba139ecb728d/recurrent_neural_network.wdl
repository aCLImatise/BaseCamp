version 1.0

task RecurrentNeuralNetwork {
  command <<<
    recurrent_neural_network
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}