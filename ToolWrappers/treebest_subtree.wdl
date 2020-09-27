version 1.0

task TreebestSubtree {
  input {
    String tree
    String list
  }
  command <<<
    treebest subtree \
      ~{tree} \
      ~{list}
  >>>
  parameter_meta {
    tree: ""
    list: ""
  }
  output {
    File out_stdout = stdout()
  }
}