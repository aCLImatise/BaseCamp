version 1.0

task ArticMaskOutput {
  input {
    String? referenceReference
    String? maskMaskFile
    String? maskMaskVcf
    String? outputOutput
  }
  command <<<
    artic_mask output \
      ~{referenceReference} \
      ~{maskMaskFile} \
      ~{maskMaskVcf} \
      ~{outputOutput}
  >>>
}