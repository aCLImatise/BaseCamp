version 1.0

task StochasticInput file {
  input {
    String? ctCtFile
  }
  command <<<
    stochastic input file \
      ~{ctCtFile}
  >>>
}