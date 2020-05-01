version 1.0

task HicNormalize {
  input {
    Array[String]+ matricesMatrices
    String normalizeNormalize
    Array[File]+ outOutFilename
    String multiplicativeMultiplicativeValue
    String setSetToZeroThreshold
  }
  command <<<
    hicNormalize \
      ~{if defined(matricesMatrices) then ("--matrices " +  '"' + matricesMatrices + '"') else ""} \
      ~{if defined(normalizeNormalize) then ("--normalize " +  '"' + normalizeNormalize + '"') else ""} \
      ~{if defined(outOutFilename) then ("--outFileName " +  '"' + outOutFilename + '"') else ""} \
      ~{if defined(multiplicativeMultiplicativeValue) then ("--multiplicativeValue " +  '"' + multiplicativeMultiplicativeValue + '"') else ""} \
      ~{if defined(setSetToZeroThreshold) then ("--setToZeroThreshold " +  '"' + setSetToZeroThreshold + '"') else ""}
  >>>
}