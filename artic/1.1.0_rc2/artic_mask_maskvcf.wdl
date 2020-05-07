version 1.0

task ArticMaskMaskvcf {
  input {
    String? referenceReference
    String? maskMaskFile
    String? maskMaskVcf
    String? outputOutput
  }
  command <<<
    artic_mask maskvcf \
      ~{referenceReference} \
      ~{maskMaskFile} \
      ~{maskMaskVcf} \
      ~{outputOutput}
  >>>
}