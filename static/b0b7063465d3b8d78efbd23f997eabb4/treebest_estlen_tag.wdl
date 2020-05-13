version 1.0

task TreebestEstlenTag {
  input {
    String? treeTree
    String? matrixMatrix
    String? tagTag
  }
  command <<<
    treebest estlen tag \
      ~{treeTree} \
      ~{matrixMatrix} \
      ~{tagTag}
  >>>
}