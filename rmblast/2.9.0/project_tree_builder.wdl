version 1.0

task ProjectTreeBuilder {
  command <<<
    project_tree_builder
  >>>
  output {
    File out_stdout = stdout()
  }
}