version 1.0

task HalUpdateBranchLengths {
  input {
    String hal_file
    String newick_tree
  }
  command <<<
    halUpdateBranchLengths \
      ~{hal_file} \
      ~{newick_tree}
  >>>
  parameter_meta {
    hal_file: ""
    newick_tree: ""
  }
}