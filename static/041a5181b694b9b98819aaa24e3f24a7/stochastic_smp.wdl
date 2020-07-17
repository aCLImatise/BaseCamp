version 1.0

task StochasticSmp {
  input {
    String stochastic
    String input_file
    String ct_file
  }
  command <<<
    stochastic-smp \
      ~{stochastic} \
      ~{input_file} \
      ~{ct_file}
  >>>
  parameter_meta {
    stochastic: ""
    input_file: ""
    ct_file: ""
  }
}