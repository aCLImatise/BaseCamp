version 1.0

task HmmpairSto fileMax nonCanonical pair freq {
  input {
    String fragmentary_policy
    Int size_of_poly_n_flanking_seqs_in_forward_prob_calculations
    String uniform_distribution_of_profile_hmm_starts_and_ends
  }
  command <<<
    hmmpair sto file max non-canonical pair freq \
      ~{fragmentary_policy} \
      ~{size_of_poly_n_flanking_seqs_in_forward_prob_calculations} \
      ~{uniform_distribution_of_profile_hmm_starts_and_ends}
  >>>
  parameter_meta {
    fragmentary_policy: ""
    size_of_poly_n_flanking_seqs_in_forward_prob_calculations: ""
    uniform_distribution_of_profile_hmm_starts_and_ends: ""
  }
}