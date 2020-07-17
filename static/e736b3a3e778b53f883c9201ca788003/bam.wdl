version 1.0

task Bam {
  input {
    String tool
    String? tool_arguments
  }
  command <<<
    bam \
      ~{tool} \
      ~{tool_arguments}
  >>>
  parameter_meta {
    tool: ""
    tool_arguments: ""
  }
}