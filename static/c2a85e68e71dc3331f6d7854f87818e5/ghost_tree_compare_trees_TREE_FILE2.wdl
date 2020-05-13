version 1.0

task GhostTreeCompareTreesTREEFILE2 {
  input {
    String? optionsOptions
    String? treeTreeFile1
    String? treeTreeFile2
  }
  command <<<
    ghost-tree compare-trees TREE_FILE2 \
      ~{optionsOptions} \
      ~{treeTreeFile1} \
      ~{treeTreeFile2}
  >>>
}