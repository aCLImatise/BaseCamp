version 1.0

task HmmView {
  input {
    String? assume_separate_version
    String? assume_use_indel
    File? required_tree_topology
    String? show_states_corresponding
    String? reflect_hmm_implemented
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
      ~{if defined(required_tree_topology) then ("-t " +  '"' + required_tree_topology + '"') else ""} \
      ~{if defined(show_states_corresponding) then ("-C " +  '"' + show_states_corresponding + '"') else ""} \
      ~{if defined(reflect_hmm_implemented) then ("-R " +  '"' + reflect_hmm_implemented + '"') else ""} \
      ~{if (show_unconnected_states) then "-x" else ""}
  >>>
  parameter_meta {
    assume_separate_version: "Assume a separate version of each state for each of\\n<nrcats> rate categories."
    assume_use_indel: "Assume use of indel model for specified category names."
    required_tree_topology: "(Required with -i) Tree topology to assume for indel\\nmodel (.nh file)."
    show_states_corresponding: "Show only the states corresponding to the specified\\ncategory names."
    reflect_hmm_implemented: "Reflect the HMM about the specified 'pivot' categories.\\n(Not yet implemented.)"
    show_unconnected_states: "Don't show unconnected states."
    hmm_fname: ""
    cat_map_fname: ""
  }
  output {
    File out_stdout = stdout()
  }
}