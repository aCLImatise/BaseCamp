version 1.0

task HmmView {
  input {
    String? assume_separate_version
    String? assume_use_indel
    String? required_i_assume
    String? show_only_states
    String? reflect_hmm_specified
    Boolean? show_unconnected_states
    String hmm_fname
    String cat_map_fname
  }
  command <<<
    hmm_view \
      ~{hmm_fname} \
      ~{cat_map_fname} \
      ~{if defined(assume_separate_version) then ("-k " +  '"' + assume_separate_version + '"') else ""} \
      ~{if defined(assume_use_indel) then ("-i " +  '"' + assume_use_indel + '"') else ""} \
      ~{if defined(required_i_assume) then ("-t " +  '"' + required_i_assume + '"') else ""} \
      ~{if defined(show_only_states) then ("-C " +  '"' + show_only_states + '"') else ""} \
      ~{if defined(reflect_hmm_specified) then ("-R " +  '"' + reflect_hmm_specified + '"') else ""} \
      ~{true="-x" false="" show_unconnected_states}
  >>>
  parameter_meta {
    assume_separate_version: "Assume a separate version of each state for each of  <nrcats> rate categories. "
    assume_use_indel: "Assume use of indel model for specified category names."
    required_i_assume: "(Required with -i) Tree topology to assume for indel model (.nh file)."
    show_only_states: "Show only the states corresponding to the specified category names."
    reflect_hmm_specified: "Reflect the HMM about the specified 'pivot' categories. (Not yet implemented.)"
    show_unconnected_states: "Don't show unconnected states."
    hmm_fname: ""
    cat_map_fname: ""
  }
}