version 1.0

task RipserDebug {
  input {
    Boolean formatFormat
    String dimDim
    String thresholdThreshold
    String? ripRipSer
    File? filenameFilename
  }
  command <<<
    ripser-debug \
      ~{ripRipSer} \
      ~{true="--format" false="" formatFormat} \
      ~{if defined(dimDim) then ("--dim " +  '"' + dimDim + '"') else ""} \
      ~{if defined(thresholdThreshold) then ("--threshold " +  '"' + thresholdThreshold + '"') else ""} \
      ~{filenameFilename}
  >>>
}