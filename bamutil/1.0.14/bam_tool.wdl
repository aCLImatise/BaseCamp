version 1.0

task BamTool {
  input {
    String? toolToolArguments
  }
  command <<<
    bam tool \
      ~{toolToolArguments}
  >>>
}