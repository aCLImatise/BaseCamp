version 1.0

task TagBamTagName {
  input {
    String? inputInput
    String? outputOutput
    String? tagTagName
    String? tagTagValue
  }
  command <<<
    tag_bam tag_name \
      ~{inputInput} \
      ~{outputOutput} \
      ~{tagTagName} \
      ~{tagTagValue}
  >>>
}