version 1.0

task MaskQuality.py {
  input {
    String inputInput
    String outputOutput
    String maskMask
    String qualityQuality
    String typeType
    String listList
    String? inputInput
    String? outputOutput
  }
  command <<<
    mask_quality.py \
      ~{inputInput} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(maskMask) then ("--mask " +  '"' + maskMask + '"') else ""} \
      ~{if defined(qualityQuality) then ("--quality " +  '"' + qualityQuality + '"') else ""} \
      ~{if defined(typeType) then ("--type " +  '"' + typeType + '"') else ""} \
      ~{if defined(listList) then ("--list " +  '"' + listList + '"') else ""} \
      ~{outputOutput}
  >>>
}