version 1.0

task Mkbitmap {
  input {
    Boolean licenseLicense
    File outputOutput
    Boolean noNoDefaults
    Boolean invertInvert
    String filterFilter
    Boolean noNoFilter
    String blurBlur
    String thresholdThreshold
    Boolean greyGrey
    File? fileFile
  }
  command <<<
    mkbitmap \
      ~{fileFile} \
      ~{true="--license" false="" licenseLicense} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--nodefaults" false="" noNoDefaults} \
      ~{true="--invert" false="" invertInvert} \
      ~{if defined(filterFilter) then ("--filter " +  '"' + filterFilter + '"') else ""} \
      ~{true="--nofilter" false="" noNoFilter} \
      ~{if defined(blurBlur) then ("--blur " +  '"' + blurBlur + '"') else ""} \
      ~{if defined(thresholdThreshold) then ("--threshold " +  '"' + thresholdThreshold + '"') else ""} \
      ~{true="--grey" false="" greyGrey}
  >>>
}