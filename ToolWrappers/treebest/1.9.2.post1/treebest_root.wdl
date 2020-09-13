version 1.0

task TreebestRoot {
  input {
    String tree
  }
  command <<<
    treebest root \
      ~{tree}
  >>>
  parameter_meta {
    tree: ""
  }
  output {
    File out_stdout = stdout()
  }
}