version 1.0

task TreebestSubtreeTree {
  input {
    String? listList
  }
  command <<<
    treebest subtree tree \
      ~{listList}
  >>>
}