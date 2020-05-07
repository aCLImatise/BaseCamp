version 1.0

task ArticMaskMaskfile {
  input {
    String? referenceReference
    String? maskMaskFile
    String? maskMaskVcf
    String? outputOutput
  }
  command <<<
    artic_mask maskfile \
      ~{referenceReference} \
      ~{maskMaskFile} \
      ~{maskMaskVcf} \
      ~{outputOutput}
  >>>
}