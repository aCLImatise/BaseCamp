version 1.0

task FastaUshuffle {
  input {
    Boolean? print_original_unshuffled
    String? specifies_let_size
    String? specifies_seed_random
    String? input_sequence_print
    String? retry_n_times
    String input_dot_fa
    String output_dot_fa
  }
  command <<<
    fasta_ushuffle \
      ~{input_dot_fa} \
      ~{output_dot_fa} \
      ~{true="-o" false="" print_original_unshuffled} \
      ~{if defined(specifies_let_size) then ("-k " +  '"' + specifies_let_size + '"') else ""} \
      ~{if defined(specifies_seed_random) then ("-s " +  '"' + specifies_seed_random + '"') else ""} \
      ~{if defined(input_sequence_print) then ("-n " +  '"' + input_sequence_print + '"') else ""} \
      ~{if defined(retry_n_times) then ("-r " +  '"' + retry_n_times + '"') else ""}
  >>>
  parameter_meta {
    print_original_unshuffled: "Print original (unshuffled) in output file."
    specifies_let_size: "specifies the let size"
    specifies_seed_random: "specifies the seed for random number generator."
    input_sequence_print: "For each input sequence, print N permutations (default is 1). Use this only for debugging."
    retry_n_times: "Retry N times to find a new shuffle (Default is 10). After N retries, a warning is printed, and a non-shuffled sequence will be written."
    input_dot_fa: ""
    output_dot_fa: ""
  }
}