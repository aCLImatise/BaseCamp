version 1.0

task Harvesttools {
  input {
    String? _filter_name
    String? multifasta_alignment_output
    String? midpoint_re_root
    Int? update_branch_values
    String? show_this_help
    Boolean? quiet_mode
  }
  command <<<
    harvesttools \
      ~{if defined(_filter_name) then ("-i " +  '"' + _filter_name + '"') else ""} \
      ~{if defined(multifasta_alignment_output) then ("-B " +  '"' + multifasta_alignment_output + '"') else ""} \
      ~{if defined(midpoint_re_root) then ("--midpoint-reroot " +  '"' + midpoint_re_root + '"') else ""} \
      ~{if defined(update_branch_values) then ("-o " +  '"' + update_branch_values + '"') else ""} \
      ~{if defined(show_this_help) then ("-v " +  '"' + show_this_help + '"') else ""} \
      ~{if (quiet_mode) then "-q" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    _filter_name: ",<filter name>,\\\"<description>\\\""
    multifasta_alignment_output: "<multi-fasta alignment output (concatenated LCBs)>"
    midpoint_re_root: "(reroot the tree at its midpoint after loading)"
    update_branch_values: "/1 (update the branch values to reflect genome length)"
    show_this_help: "(show this help)"
    quiet_mode: "(quiet mode)"
  }
  output {
    File out_stdout = stdout()
  }
}