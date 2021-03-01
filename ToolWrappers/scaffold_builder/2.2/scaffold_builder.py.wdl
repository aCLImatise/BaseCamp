version 1.0

task ScaffoldBuilderpy {
  command <<<
    scaffold_builder_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}