version 1.0

task AssemblyAnnotationToolSeqpy {
  command <<<
    assembly_annotation_tool_seq_py
  >>>
  output {
    File out_stdout = stdout()
  }
}