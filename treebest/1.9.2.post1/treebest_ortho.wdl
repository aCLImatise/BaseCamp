version 1.0

task TreebestOrtho {
  input {
    String tree
  }
  command <<<
    treebest ortho \
      ~{tree}
  >>>
  parameter_meta {
    tree: ""
  }
}