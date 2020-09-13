version 1.0

task Pyrosim {
  input {
    String? nucleotide_flow_order
    Boolean? calculate_use_permutation
    Int? number_round_iterations
    Int? number_sequenceable_homopolymer
    Int? number_sequence_default
    String? set_seed_seed
    String fast_a
  }
  command <<<
    pyrosim \
      ~{fast_a} \
      ~{if defined(nucleotide_flow_order) then ("-f " +  '"' + nucleotide_flow_order + '"') else ""} \
      ~{if (calculate_use_permutation) then "-F" else ""} \
      ~{if defined(number_round_iterations) then ("-i " +  '"' + number_round_iterations + '"') else ""} \
      ~{if defined(number_sequenceable_homopolymer) then ("-p " +  '"' + number_sequenceable_homopolymer + '"') else ""} \
      ~{if defined(number_sequence_default) then ("-r " +  '"' + number_sequence_default + '"') else ""} \
      ~{if defined(set_seed_seed) then ("-s " +  '"' + set_seed_seed + '"') else ""}
  >>>
  parameter_meta {
    nucleotide_flow_order: "Nucleotide flow order for one round, default acgt"
    calculate_use_permutation: "Calculate and use the optimal flow permutation for -f"
    number_round_iterations: "Number round iterations to simulate, default 40"
    number_sequenceable_homopolymer: "Number of sequence-able homopolymer bases per flow,\\ndefault 15"
    number_sequence_default: "Number of reads to sequence, default 1000"
    set_seed_seed: "Set random generator seed, default seed is generated\\nby the system clock"
    fast_a: ""
  }
  output {
    File out_stdout = stdout()
  }
}