version 1.0

task BiopetSeattleseqkit {
  input {
    String seattle_seq_kit
    String? tool_name
    String? tool
    String? args
  }
  command <<<
    biopet-seattleseqkit \
      ~{seattle_seq_kit} \
      ~{tool_name} \
      ~{tool} \
      ~{args}
  >>>
  parameter_meta {
    seattle_seq_kit: ""
    tool_name: ""
    tool: ""
    args: ""
  }
}