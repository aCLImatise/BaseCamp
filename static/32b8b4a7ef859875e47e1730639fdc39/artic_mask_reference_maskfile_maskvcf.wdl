version 1.0

task ArticMaskReferenceMaskfileMaskvcf {
  input {
    String? outputOutput
  }
  command <<<
    artic_mask reference maskfile maskvcf \
      ~{outputOutput}
  >>>
}