version 1.0

task RegressionNeuralNetwork {
  command <<<
    regression_neural_network
  >>>
  output {
    File out_stdout = stdout()
  }
}