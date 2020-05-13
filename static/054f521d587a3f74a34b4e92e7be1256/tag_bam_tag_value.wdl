version 1.0

task TagBamTagValue {
  input {
    String? inputInput
    String? outputOutput
    String? tagTagName
    String? tagTagValue
  }
  command <<<
    tag_bam tag_value \
      ~{inputInput} \
      ~{outputOutput} \
      ~{tagTagName} \
      ~{tagTagValue}
  >>>
}