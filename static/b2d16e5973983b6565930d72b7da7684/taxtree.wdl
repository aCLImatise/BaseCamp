version 1.0

task Taxtree.sh {
  input {
    String? x_mx_two_zero_g
    String names_dot_dmp
    String nodes_dot_dmp
    String merged_dot_dmp
    String tree_dot_tax_tree_do_tgz
  }
  command <<<
    taxtree.sh \
      ~{names_dot_dmp} \
      ~{nodes_dot_dmp} \
      ~{merged_dot_dmp} \
      ~{tree_dot_tax_tree_do_tgz} \
      ~{if defined(x_mx_two_zero_g) then ("-Xmx20g " +  '"' + x_mx_two_zero_g + '"') else ""}
  >>>
  parameter_meta {
    x_mx_two_zero_g: "specify 20 gigs of RAM.  The max is typically 85% of physical memory."
    names_dot_dmp: ""
    nodes_dot_dmp: ""
    merged_dot_dmp: ""
    tree_dot_tax_tree_do_tgz: ""
  }
}