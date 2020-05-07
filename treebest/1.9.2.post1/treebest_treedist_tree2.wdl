version 1.0

task TreebestTreedistTree2 {
  input {
    String? tree1Tree1
    String? tree2Tree2
  }
  command <<<
    treebest treedist tree2 \
      ~{tree1Tree1} \
      ~{tree2Tree2}
  >>>
}