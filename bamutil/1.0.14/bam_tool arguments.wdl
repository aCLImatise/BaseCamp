version 1.0

task BamTool arguments {
  input {
    String? toolTool
    String? toolToolArguments
  }
  command <<<
    bam tool arguments \
      ~{toolTool} \
      ~{toolToolArguments}
  >>>
}