version 1.0

task TagBamInput {
  input {
    String? inputInput
    String? outputOutput
    String? tagTagName
    String? tagTagValue
  }
  command <<<
    tag_bam input \
      ~{inputInput} \
      ~{outputOutput} \
      ~{tagTagName} \
      ~{tagTagValue}
  >>>
}