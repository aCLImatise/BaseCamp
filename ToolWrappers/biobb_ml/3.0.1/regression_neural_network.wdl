version 1.0

task RegressionNeuralNetwork {
  command <<<
    regression_neural_network
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}