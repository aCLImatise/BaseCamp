version 1.0

task BiopetBamstats {
  input {
    String bam_stats
    String? tool_name
    String? tool
    String? args
  }
  command <<<
    biopet-bamstats \
      ~{bam_stats} \
      ~{tool_name} \
      ~{tool} \
      ~{args}
  >>>
  parameter_meta {
    bam_stats: ""
    tool_name: ""
    tool: ""
    args: ""
  }
}