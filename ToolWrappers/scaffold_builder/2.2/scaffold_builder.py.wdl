version 1.0

task ScaffoldBuilderpy {
  command <<<
    scaffold_builder_py
  >>>
  output {
    File out_stdout = stdout()
  }
}