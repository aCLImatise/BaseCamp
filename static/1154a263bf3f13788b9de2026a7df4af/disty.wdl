version 1.0

task Disty {
  input {
    Boolean? float_skip_columns
    Boolean? int_input_format
    Boolean? int_strategy_ignore
    Boolean? print_version_exit
    String alignment_dot_fa
  }
  command <<<
    disty \
      ~{alignment_dot_fa} \
      ~{true="-n" false="" float_skip_columns} \
      ~{true="-i" false="" int_input_format} \
      ~{true="-s" false="" int_strategy_ignore} \
      ~{true="-v" false="" print_version_exit}
  >>>
  parameter_meta {
    float_skip_columns: "FLOAT  skip columns having frequency of N > FLOAT [1.00]"
    int_input_format: "INT    input format [0] 0: ACGT 1: 01"
    int_strategy_ignore: "INT    strategy to deal with N's [0] 0: ignore pairwisely 1: ignore pairwisely and normalize 2: ignore globally 3: replace by the major allele 4: replace by the closest individual (not implemented yet)"
    print_version_exit: "print version and exit"
    alignment_dot_fa: ""
  }
}