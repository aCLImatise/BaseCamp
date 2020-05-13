version 1.0

task TreebestSubtreeList {
  input {
    String? treeTree
    String? listList
  }
  command <<<
    treebest subtree list \
      ~{treeTree} \
      ~{listList}
  >>>
}