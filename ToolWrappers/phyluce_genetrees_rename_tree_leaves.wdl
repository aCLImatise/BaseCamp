version 1.0

task PhyluceGenetreesRenameTreeLeaves {
  input {
    String? section
    File? input_tree_file
    File? config
    Boolean? order
    String? input_format
    String? output_format
    String? re_root
    String? do_not_preserve_spaces
  }
  command <<<
    phyluce_genetrees_rename_tree_leaves \
      ~{if defined(section) then ("--section " +  '"' + section + '"') else ""} \
      ~{if defined(input_tree_file) then ("--input " +  '"' + input_tree_file + '"') else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if (order) then "--order" else ""} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{if defined(output_format) then ("--output-format " +  '"' + output_format + '"') else ""} \
      ~{if defined(re_root) then ("--reroot " +  '"' + re_root + '"') else ""} \
      ~{if defined(do_not_preserve_spaces) then ("--do-not-preserve-spaces " +  '"' + do_not_preserve_spaces + '"') else ""}
  >>>
  parameter_meta {
    section: "[--order {left:right,right:left}]\\n[--input-format {nexus,newick,fasta,phylip}]\\n[--output-format {nexus,newick,fasta,phylip}]\\n[--reroot REROOT]\\n[--do-not-preserve-spaces DO_NOT_PRESERVE_SPACES]"
    input_tree_file: "The input tree file"
    config: "A python config file mapping one name to another"
    order: "{left:right,right:left}\\nMap the names as entered or in reverse"
    input_format: "The tree file format"
    output_format: "The tree file format"
    re_root: "The resulting name to root the tree on"
    do_not_preserve_spaces: "Do not retain spaces in output names\\n"
  }
  output {
    File out_stdout = stdout()
  }
}