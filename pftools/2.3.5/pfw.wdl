version 1.0

task Pfw {
  input {
    Boolean? input_sequences_msa
    Boolean? value_number_shuffles
    Boolean? value_gap_excision
    Boolean? value_random_number
    Boolean? value_total_weight
    Boolean? hmn_x_rw
  }
  command <<<
    pfw \
      ~{true="-m" false="" input_sequences_msa} \
      ~{true="-N" false="" value_number_shuffles} \
      ~{true="-X" false="" value_gap_excision} \
      ~{true="-R" false="" value_random_number} \
      ~{true="-W" false="" value_total_weight} \
      ~{true="-hmNXRW" false="" hmn_x_rw}
  >>>
  parameter_meta {
    input_sequences_msa: ": input sequences in MSA format."
    value_number_shuffles: "<value>: number of shuffles per sequence (default: 100)."
    value_gap_excision: "<value>: gap excision threshold (default: 0.5)."
    value_random_number: "<value>: random number seed, negative integer (default: -123456789)."
    value_total_weight: "<value>: total weight (default: 1)."
    hmn_x_rw: ""
  }
}