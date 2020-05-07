version 1.0

task TreebestOrtho {
  input {
    String? treeTree
  }
  command <<<
    treebest ortho \
      ~{treeTree}
  >>>
}