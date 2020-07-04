version 1.0

task Pbindexdump {
  input {
    Boolean? format
    Boolean? json_indent_level
    Boolean? json_raw
    String input_do_tba_mdot_pbi
  }
  command <<<
    pbindexdump \
      ~{input_do_tba_mdot_pbi} \
      ~{true="--format" false="" format} \
      ~{true="--json-indent-level" false="" json_indent_level} \
      ~{true="--json-raw" false="" json_raw}
  >>>
  parameter_meta {
    format: "STR   Output format. Valid choices: (json, cpp). [json]"
    json_indent_level: "INT   JSON indent level. [4]"
    json_raw: "Print fields in a layout that more closely reflects the PBI file format (per-field columns, not per-record objects."
    input_do_tba_mdot_pbi: "FILE  Input PBI file. If not provided, stdin will be used as input."
  }
}