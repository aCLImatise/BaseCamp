version 1.0

task ArticMaskReferenceOutput {
  input {
    String? maskMaskFile
    String? maskMaskVcf
    String? outputOutput
  }
  command <<<
    artic_mask reference output \
      ~{maskMaskFile} \
      ~{maskMaskVcf} \
      ~{outputOutput}
  >>>
}