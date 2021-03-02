version 1.0

task ProjectTreeBuilder {
  command <<<
    project_tree_builder
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}