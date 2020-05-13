version 1.0

task ArticMaskReferenceMaskvcf {
  input {
    String? maskMaskFile
    String? maskMaskVcf
    String? outputOutput
  }
  command <<<
    artic_mask reference maskvcf \
      ~{maskMaskFile} \
      ~{maskMaskVcf} \
      ~{outputOutput}
  >>>
}