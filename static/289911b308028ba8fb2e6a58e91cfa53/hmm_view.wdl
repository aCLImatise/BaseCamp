version 1.0

task HmmView {
  input {
    String? assume_separate_version
    String? assume_use_indel
    File? required_i_tree
    String? show_only_states
    String? reflect_hmm_yet
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
      ~{if defined(required_i_tree) then ("-t " +  '"' + required_i_tree + '"') else ""} \
      ~{if defined(show_only_states) then ("-C " +  '"' + show_only_states + '"') else ""} \
      ~{if defined(reflect_hmm_yet) then ("-R " +  '"' + reflect_hmm_yet + '"') else ""} \
      ~{if (show_unconnected_states) then "-x" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    assume_separate_version: "Assume a separate version of each state for each of\\n<nrcats> rate categories."
    assume_use_indel: "Assume use of indel model for specified category names."
    required_i_tree: "(Required with -i) Tree topology to assume for indel\\nmodel (.nh file)."
    show_only_states: "Show only the states corresponding to the specified\\ncategory names."
    reflect_hmm_yet: "Reflect the HMM about the specified 'pivot' categories.\\n(Not yet implemented.)"
    show_unconnected_states: "Don't show unconnected states."
    hmm_fname: ""
    cat_map_fname: ""
  }
  output {
    File out_stdout = stdout()
  }
}