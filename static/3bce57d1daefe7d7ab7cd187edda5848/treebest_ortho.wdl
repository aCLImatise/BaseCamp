version 1.0

task TreebestOrtho {
  input {
    String tree
  }
  command <<<
    treebest ortho \
      ~{tree}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    tree: ""
  }
  output {
    File out_stdout = stdout()
  }
}