version 1.0

task NwEd {
  input {
    Boolean? print_modified_tree
    Boolean? visit_tree_starting
    Boolean? stop_processing_clade
    String subtree_print_subtree
    String splice_out_splice
    String delete_node
    String print_nodes_label
  }
  command <<<
    nw_ed \
      ~{subtree_print_subtree} \
      ~{splice_out_splice} \
      ~{delete_node} \
      ~{print_nodes_label} \
      ~{true="-n" false="" print_modified_tree} \
      ~{true="-r" false="" visit_tree_starting} \
      ~{true="-o" false="" stop_processing_clade}
  >>>
  parameter_meta {
    print_modified_tree: ": do not print the (possibly modified) tree at the end of the run  (modeled after sed -n)"
    visit_tree_starting: ": visit tree in preorder (starting at root, and visiting a node before any of its descendants). Default is post-order (ends at root and visits a node after all its descendats)."
    stop_processing_clade: ": stop processing a clade after the first match - that is, if a node matches, its descendants are not processed. Note: this option will automatically set -r, as it makes no sense in post-order."
    subtree_print_subtree: "(Subtree) print subtree rooted at matching node"
    splice_out_splice: "(splice Out) splice out node, and attach children to parent,  preserving branch lengths. This is useful for \"opening\" poorly supported nodes."
    delete_node: "Delete node"
    print_nodes_label: "Print node's label"
  }
}