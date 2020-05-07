version 1.0

task TagBamOutput {
  input {
    String? inputInput
    String? outputOutput
    String? tagTagName
    String? tagTagValue
  }
  command <<<
    tag_bam output \
      ~{inputInput} \
      ~{outputOutput} \
      ~{tagTagName} \
      ~{tagTagValue}
  >>>
}