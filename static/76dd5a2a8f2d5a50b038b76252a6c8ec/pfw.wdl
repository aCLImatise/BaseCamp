version 1.0

task Pfw {
  input {
    Boolean? input_sequences_msa
    Boolean? valuenumber_shuffles_sequence
    Boolean? valuegap_excision_threshold
    Boolean? valuerandom_number_seed
    Boolean? valuetotal_weight_default
    Boolean? hmn_x_rw
  }
  command <<<
    pfw \
      ~{if (input_sequences_msa) then "-m" else ""} \
      ~{if (valuenumber_shuffles_sequence) then "-N" else ""} \
      ~{if (valuegap_excision_threshold) then "-X" else ""} \
      ~{if (valuerandom_number_seed) then "-R" else ""} \
      ~{if (valuetotal_weight_default) then "-W" else ""} \
      ~{if (hmn_x_rw) then "-hmNXRW" else ""}
  >>>
  parameter_meta {
    input_sequences_msa: ": input sequences in MSA format."
    valuenumber_shuffles_sequence: "<value>:\\nnumber of shuffles per sequence (default: 100)."
    valuegap_excision_threshold: "<value>:\\ngap excision threshold (default: 0.5)."
    valuerandom_number_seed: "<value>:\\nrandom number seed, negative integer (default: -123456789)."
    valuetotal_weight_default: "<value>:\\ntotal weight (default: 1)."
    hmn_x_rw: ""
  }
  output {
    File out_stdout = stdout()
  }
}