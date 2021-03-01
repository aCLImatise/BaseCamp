version 1.0

task AssemblyAnnotationToolpy {
  command <<<
    assembly_annotation_tool_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}