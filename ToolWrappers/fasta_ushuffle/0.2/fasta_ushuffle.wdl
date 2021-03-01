version 1.0

task FastaUshuffle {
  input {
    File? print_original_unshuffled
    Int? specifies_let_size
    Int? specifies_seed_random
    Int? input_sequence_print
    Int? retry_n_times
    String ag_tag_tag_tag_tag_tagtagtagtagtagtagagtg
    String ctgagagtcacacatgattttaca_aca_acc_at_gaag
    String agtagtagtagtagtagtagtag_tag
    String ctgagagtcacacatgattttaca_ac
  }
  command <<<
    fasta_ushuffle \
      ~{ag_tag_tag_tag_tag_tagtagtagtagtagtagagtg} \
      ~{ctgagagtcacacatgattttaca_aca_acc_at_gaag} \
      ~{agtagtagtagtagtagtagtag_tag} \
      ~{ctgagagtcacacatgattttaca_ac} \
      ~{if (print_original_unshuffled) then "-o" else ""} \
      ~{if defined(specifies_let_size) then ("-k " +  '"' + specifies_let_size + '"') else ""} \
      ~{if defined(specifies_seed_random) then ("-s " +  '"' + specifies_seed_random + '"') else ""} \
      ~{if defined(input_sequence_print) then ("-n " +  '"' + input_sequence_print + '"') else ""} \
      ~{if defined(retry_n_times) then ("-r " +  '"' + retry_n_times + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    print_original_unshuffled: "Print original (unshuffled) in output file."
    specifies_let_size: "specifies the let size"
    specifies_seed_random: "specifies the seed for random number generator."
    input_sequence_print: "For each input sequence, print N permutations (default is 1).\\nUse this only for debugging."
    retry_n_times: "Retry N times to find a new shuffle (Default is 10). After N retries, a warning is printed, and a non-shuffled sequence will be written."
    ag_tag_tag_tag_tag_tagtagtagtagtagtagagtg: ">dummy2"
    ctgagagtcacacatgattttaca_aca_acc_at_gaag: "This is not a valid input file:"
    agtagtagtagtagtagtagtag_tag: "TAGTAGAGTG"
    ctgagagtcacacatgattttaca_ac: "AACCATGAAG"
  }
  output {
    File out_stdout = stdout()
    File out_print_original_unshuffled = "${in_print_original_unshuffled}"
  }
}