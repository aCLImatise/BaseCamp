version 1.0

task GhostTreeCompareTreesTREEFILE1 {
  input {
    String? optionsOptions
    String? treeTreeFile1
    String? treeTreeFile2
  }
  command <<<
    ghost-tree compare-trees TREE_FILE1 \
      ~{optionsOptions} \
      ~{treeTreeFile1} \
      ~{treeTreeFile2}
  >>>
}