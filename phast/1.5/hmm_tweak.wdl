version 1.0

task HmmTweak {
  input {
    String? var_0
    String? var_1
    String? multiply_transition_probabilities
    String? add_specified_constant
    String? set_transition_probabilities
    String? assume_phylohmm_model
    String? required_given_topology
    String? from_states_corresp
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
      ~{if defined(required_given_topology) then ("-u " +  '"' + required_given_topology + '"') else ""} \
      ~{if defined(from_states_corresp) then ("-F " +  '"' + from_states_corresp + '"') else ""} \
      ~{if defined(use_i_to) then ("-T " +  '"' + use_i_to + '"') else ""} \
      ~{true="-z" false="" equalize_transition_probabilities} \
      ~{true="-R" false="" restrict_successive_transitions} \
      ~{true="-y" false="" z_compute_separate}
  >>>
  parameter_meta {
    var_0: "Operate on transitions *from* states corresponding to the  specified category names (default all)"
    var_1: "Operate on transitions *to* states corresponding to the  specified category names (default all)"
    multiply_transition_probabilities: "Multiply transition probabilities by the specified factor."
    add_specified_constant: "Add the specified constant to transition probabilities."
    set_transition_probabilities: "Set transition probabilities equal to the specified value."
    assume_phylohmm_model: "Assume a phylo-HMM indel model for states corresponding to  the specified category names."
    required_given_topology: "(Required with -i) Assume given tree topology (.nh file)."
    from_states_corresp: "(For use with -i) Operate on transitions from states corresp. to the specified gap-pattern numbers (ANDed with -f)."
    use_i_to: "(For use with -i) Operate on transitions to states corresp. to the specified gap-pattern numbers (ANDed with -t)."
    equalize_transition_probabilities: "Equalize transition probabilities.  Set all transition probabilities indicated by -f/-t/-F/-T to their overall average value.  Options -m and/or -a can be used to adjust this average value."
    restrict_successive_transitions: "Restrict to successive transitions within a category range."
    z_compute_separate: "Like -z, except compute separate averages for five classes of transitions, based on the gap patterns of the states involved: between null gap patterns, between equal non-null gap patterns, from null to non-null gap patterns, from non-null to null gap patterns, and all others.  Useful with the indel model when training data is sparse (e.g., for splice-site states).  Options -m and -a will be applied to transitions of the 3rd and 5th classes described."
    file_dot_hmm: ""
    cmap_do_tcm: ""
  }
}