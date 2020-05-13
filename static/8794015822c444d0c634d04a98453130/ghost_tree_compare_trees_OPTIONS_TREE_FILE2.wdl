version 1.0

task GhostTreeCompareTreesOPTIONSTREEFILE2 {
  input {
    String? treeTreeFile1
    String? treeTreeFile2
  }
  command <<<
    ghost-tree compare-trees OPTIONS TREE_FILE2 \
      ~{treeTreeFile1} \
      ~{treeTreeFile2}
  >>>
}