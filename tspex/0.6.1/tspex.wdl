version 1.0

task Tspex {
  input {
    Boolean logLog
    Boolean disableDisableTransformation
    String thresholdThreshold
    String? inputInputFile
    String? outputOutputFile
    String? methodMethod
  }
  command <<<
    tspex \
      ~{inputInputFile} \
      ~{true="--log" false="" logLog} \
      ~{true="--disable_transformation" false="" disableDisableTransformation} \
      ~{if defined(thresholdThreshold) then ("--threshold " +  '"' + thresholdThreshold + '"') else ""} \
      ~{outputOutputFile} \
      ~{methodMethod}
  >>>
}