version 1.0

task AutoencoderNeuralNetwork {
  command <<<
    autoencoder_neural_network
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}