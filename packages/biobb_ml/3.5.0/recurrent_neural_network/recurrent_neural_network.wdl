version 1.0

task RecurrentNeuralNetwork {
  command <<<
    recurrent_neural_network
  >>>
  runtime {
    docker: "quay.io/biocontainers/biobb_ml:3.5.0--pyhafabc51_3"
  }
  output {
    File out_stdout = stdout()
  }
}