version 1.0

task HmmpairStofileFragmentarypolicy {
  input {
    String hmm_pair
    File sto_file
    Int max_non_canonical_pair_freq
    String fragmentary_policy
    Int size_of_poly_n_flanking_seqs_in_forward_prob_calculations
    String uniform_distribution_of_profile_hmm_starts_and_ends
  }
  command <<<
    hmmpair sto_file fragmentary_policy \
      ~{hmm_pair} \
      ~{sto_file} \
      ~{max_non_canonical_pair_freq} \
      ~{fragmentary_policy} \
      ~{size_of_poly_n_flanking_seqs_in_forward_prob_calculations} \
      ~{uniform_distribution_of_profile_hmm_starts_and_ends}
  >>>
  parameter_meta {
    hmm_pair: ""
    sto_file: ""
    max_non_canonical_pair_freq: ""
    fragmentary_policy: ""
    size_of_poly_n_flanking_seqs_in_forward_prob_calculations: ""
    uniform_distribution_of_profile_hmm_starts_and_ends: ""
  }
  output {
    File out_stdout = stdout()
  }
}