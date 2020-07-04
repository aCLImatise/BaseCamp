version 1.0

task BiopetSeqstat {
  input {
    String seq_stat
    String? tool_name
    String? tool
    String? args
  }
  command <<<
    biopet-seqstat \
      ~{seq_stat} \
      ~{tool_name} \
      ~{tool} \
      ~{args}
  >>>
  parameter_meta {
    seq_stat: ""
    tool_name: ""
    tool: ""
    args: ""
  }
}