version 1.0

task HmmTweak {
  input {
    String? var_0
    String? var_1
    String? multiply_transition_probabilities
    String? add_specified_constant
    String? set_transition_probabilities
    String? assume_phylohmm_model
    File? required_i_assume
    String? use_from_states
    String? use_i_to
    Boolean? equalize_transition_probabilities
    Boolean? restrict_successive_transitions
    Boolean? z_compute_separate
    File file_dot_hmm
    String cmap_do_tcm
  }
  command <<<
    hmm_tweak \
      ~{file_dot_hmm} \
      ~{cmap_do_tcm} \
      ~{if defined(var_0) then ("-f " +  '"' + var_0 + '"') else ""} \
      ~{if defined(var_1) then ("-t " +  '"' + var_1 + '"') else ""} \
      ~{if defined(multiply_transition_probabilities) then ("-m " +  '"' + multiply_transition_probabilities + '"') else ""} \
      ~{if defined(add_specified_constant) then ("-a " +  '"' + add_specified_constant + '"') else ""} \
      ~{if defined(set_transition_probabilities) then ("-e " +  '"' + set_transition_probabilities + '"') else ""} \
      ~{if defined(assume_phylohmm_model) then ("-i " +  '"' + assume_phylohmm_model + '"') else ""} \
      ~{if defined(required_i_assume) then ("-u " +  '"' + required_i_assume + '"') else ""} \
      ~{if defined(use_from_states) then ("-F " +  '"' + use_from_states + '"') else ""} \
      ~{if defined(use_i_to) then ("-T " +  '"' + use_i_to + '"') else ""} \
      ~{if (equalize_transition_probabilities) then "-z" else ""} \
      ~{if (restrict_successive_transitions) then "-R" else ""} \
      ~{if (z_compute_separate) then "-y" else ""}
  >>>
  parameter_meta {
    var_0: "Operate on transitions *from* states corresponding to the\\nspecified category names (default all)"
    var_1: "Operate on transitions *to* states corresponding to the\\nspecified category names (default all)"
    multiply_transition_probabilities: "Multiply transition probabilities by the specified factor."
    add_specified_constant: "Add the specified constant to transition probabilities."
    set_transition_probabilities: "Set transition probabilities equal to the specified value."
    assume_phylohmm_model: "Assume a phylo-HMM indel model for states corresponding to\\nthe specified category names."
    required_i_assume: "(Required with -i) Assume given tree topology (.nh file)."
    use_from_states: "(For use with -i) Operate on transitions from states corresp.\\nto the specified gap-pattern numbers (ANDed with -f)."
    use_i_to: "(For use with -i) Operate on transitions to states corresp.\\nto the specified gap-pattern numbers (ANDed with -t)."
    equalize_transition_probabilities: "Equalize transition probabilities.  Set all transition\\nprobabilities indicated by -f/-t/-F/-T to their overall\\naverage value.  Options -m and/or -a can be used to adjust\\nthis average value."
    restrict_successive_transitions: "Restrict to successive transitions within a category range."
    z_compute_separate: "Like -z, except compute separate averages for five classes\\nof transitions, based on the gap patterns of the states\\ninvolved: between null gap patterns, between equal\\nnon-null gap patterns, from null to non-null gap\\npatterns, from non-null to null gap patterns, and all\\nothers.  Useful with the indel model when training data\\nis sparse (e.g., for splice-site states).  Options -m and -a\\nwill be applied to transitions of the 3rd and 5th classes\\ndescribed."
    file_dot_hmm: ""
    cmap_do_tcm: ""
  }
  output {
    File out_stdout = stdout()
  }
}