version 1.0

task BiopetSampleconfig {
  input {
    String sample_config
    String? tool_name
    String? tool
    String? args
  }
  command <<<
    biopet-sampleconfig \
      ~{sample_config} \
      ~{tool_name} \
      ~{tool} \
      ~{args}
  >>>
  parameter_meta {
    sample_config: ""
    tool_name: ""
    tool: ""
    args: ""
  }
}