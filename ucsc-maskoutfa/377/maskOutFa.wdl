version 1.0

task MaskOutFa {
  input {
    String putsPuts
    String softSoftAdd
    String clipClip
    String maskMaskFormat
    String? inInFa
    String? maskMaskFile
    String? outOutFamAsked
  }
  command <<<
    maskOutFa \
      ~{inInFa} \
      ~{if defined(putsPuts) then ("- puts " +  '"' + putsPuts + '"') else ""} \
      ~{if defined(softSoftAdd) then ("-softAdd " +  '"' + softSoftAdd + '"') else ""} \
      ~{if defined(clipClip) then ("- clip " +  '"' + clipClip + '"') else ""} \
      ~{if defined(maskMaskFormat) then ("-maskFormat " +  '"' + maskMaskFormat + '"') else ""} \
      ~{maskMaskFile} \
      ~{outOutFamAsked}
  >>>
}