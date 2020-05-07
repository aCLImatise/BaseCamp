version 1.0

task TreebestLeaf {
  input {
    String? nhNhTree
  }
  command <<<
    treebest leaf \
      ~{nhNhTree}
  >>>
}