version 1.0

task NwEdFilename {
  input {
    Boolean? print_modified_tree
    Boolean? visit_tree_starting
    Boolean? stop_processing_clade
  }
  command <<<
    nw_ed filename__ \
      ~{if (print_modified_tree) then "-n" else ""} \
      ~{if (visit_tree_starting) then "-r" else ""} \
      ~{if (stop_processing_clade) then "-o" else ""}
  >>>
  parameter_meta {
    print_modified_tree: ": do not print the (possibly modified) tree at the end of the run\\n(modeled after sed -n)"
    visit_tree_starting: ": visit tree in preorder (starting at root, and visiting a node\\nbefore any of its descendants). Default is post-order (ends at root\\nand visits a node after all its descendats)."
    stop_processing_clade: ": stop processing a clade after the first match - that is, if a node\\nmatches, its descendants are not processed.\\nNote: this option will automatically set -r, as it makes no\\nsense in post-order."
  }
  output {
    File out_stdout = stdout()
  }
}