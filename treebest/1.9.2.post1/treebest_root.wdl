version 1.0

task TreebestRoot {
  input {
    String? treeTree
  }
  command <<<
    treebest root \
      ~{treeTree}
  >>>
}