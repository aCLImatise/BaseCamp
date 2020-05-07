version 1.0

task TreebestEstlenMatrix {
  input {
    String? treeTree
    String? matrixMatrix
    String? tagTag
  }
  command <<<
    treebest estlen matrix \
      ~{treeTree} \
      ~{matrixMatrix} \
      ~{tagTag}
  >>>
}