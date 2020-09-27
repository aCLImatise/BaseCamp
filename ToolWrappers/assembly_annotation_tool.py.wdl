version 1.0

task AssemblyAnnotationToolpy {
  command <<<
    assembly_annotation_tool_py
  >>>
  output {
    File out_stdout = stdout()
  }
}