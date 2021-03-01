version 1.0

task SimulateSequencespy {
  input {
    Int? number_of_sequences
    Int? length_simulated_sequences
    Int? relative_base_frequencies
    String? random_seed_none
    String output_fast_a
  }
  command <<<
    simulate_sequences_py \
      ~{output_fast_a} \
      ~{if defined(number_of_sequences) then ("-n " +  '"' + number_of_sequences + '"') else ""} \
      ~{if defined(length_simulated_sequences) then ("-m " +  '"' + length_simulated_sequences + '"') else ""} \
      ~{if defined(relative_base_frequencies) then ("-b " +  '"' + relative_base_frequencies + '"') else ""} \
      ~{if defined(random_seed_none) then ("-z " +  '"' + random_seed_none + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/wub:0.5.1--pyh3252c3a_0"
  }
  parameter_meta {
    number_of_sequences: "Number of sequences (1)."
    length_simulated_sequences: "Length of simulated sequences (3000)."
    relative_base_frequencies: "Relative base frequencies in A,C,G,T order (1,1,1,1)."
    random_seed_none: "Random seed (None)."
    output_fast_a: "Output fasta (default: stdout)"
  }
  output {
    File out_stdout = stdout()
  }
}