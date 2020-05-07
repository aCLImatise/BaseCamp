version 1.0

task StochasticCt file {
  input {
    String? inputInputFile
    String? ctCtFile
  }
  command <<<
    stochastic ct file \
      ~{inputInputFile} \
      ~{ctCtFile}
  >>>
}