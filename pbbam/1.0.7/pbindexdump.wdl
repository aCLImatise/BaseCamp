version 1.0

task Pbindexdump {
  input {
    Boolean formatFormat
    Boolean jsonJsonIndentLevel
    Boolean jsonJsonRaw
  }
  command <<<
    pbindexdump \
      ~{true="--format" false="" formatFormat} \
      ~{true="--json-indent-level" false="" jsonJsonIndentLevel} \
      ~{true="--json-raw" false="" jsonJsonRaw}
  >>>
}