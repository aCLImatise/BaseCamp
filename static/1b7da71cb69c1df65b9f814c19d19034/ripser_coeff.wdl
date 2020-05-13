version 1.0

task RipserCoeff {
  input {
    Boolean formatFormat
    String dimDim
    String thresholdThreshold
    String modulusModulus
    String? ripRipSer
    File? filenameFilename
  }
  command <<<
    ripser-coeff \
      ~{ripRipSer} \
      ~{true="--format" false="" formatFormat} \
      ~{if defined(dimDim) then ("--dim " +  '"' + dimDim + '"') else ""} \
      ~{if defined(thresholdThreshold) then ("--threshold " +  '"' + thresholdThreshold + '"') else ""} \
      ~{if defined(modulusModulus) then ("--modulus " +  '"' + modulusModulus + '"') else ""} \
      ~{filenameFilename}
  >>>
}