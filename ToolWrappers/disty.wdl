version 1.0

task Disty {
  input {
    Boolean? float_skip_columns
    Boolean? int_input_format
    Boolean? int_strategy_deal
    Boolean? print_version_exit
    String alignment_dot_fa
  }
  command <<<
    disty \
      ~{alignment_dot_fa} \
      ~{if (float_skip_columns) then "-n" else ""} \
      ~{if (int_input_format) then "-i" else ""} \
      ~{if (int_strategy_deal) then "-s" else ""} \
      ~{if (print_version_exit) then "-v" else ""}
  >>>
  parameter_meta {
    float_skip_columns: "FLOAT  skip columns having frequency of N > FLOAT [1.00]"
    int_input_format: "INT    input format [0]\\n0: ACGT\\n1: 01"
    int_strategy_deal: "INT    strategy to deal with N's [0]\\n0: ignore pairwisely\\n1: ignore pairwisely and normalize\\n2: ignore globally\\n3: replace by the major allele\\n4: replace by the closest individual (not implemented yet)"
    print_version_exit: "print version and exit"
    alignment_dot_fa: ""
  }
  output {
    File out_stdout = stdout()
  }
}