version 1.0

task ArticMaskReferenceMaskfileOutput {
  input {
    String? maskMaskVcf
    String? outputOutput
  }
  command <<<
    artic_mask reference maskfile output \
      ~{maskMaskVcf} \
      ~{outputOutput}
  >>>
}