version 1.0

task Ripser {
  input {
    Boolean formatFormat
    String dimDim
    String thresholdThreshold
    File? filenameFilename
  }
  command <<<
    ripser \
      ~{filenameFilename} \
      ~{true="--format" false="" formatFormat} \
      ~{if defined(dimDim) then ("--dim " +  '"' + dimDim + '"') else ""} \
      ~{if defined(thresholdThreshold) then ("--threshold " +  '"' + thresholdThreshold + '"') else ""}
  >>>
}