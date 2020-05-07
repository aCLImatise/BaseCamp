version 1.0

task StochasticSmp {
  input {
    String? stochasticStochastic
    String? inputInputFile
    String? ctCtFile
  }
  command <<<
    stochastic-smp \
      ~{stochasticStochastic} \
      ~{inputInputFile} \
      ~{ctCtFile}
  >>>
}