version 1.0

task AutoencoderNeuralNetwork {
  command <<<
    autoencoder_neural_network
  >>>
  output {
    File out_stdout = stdout()
  }
}