version 1.0

task HicCompareMatrices {
  input {
    String matricesMatrices
    String outOutFilename
    String operationOperation
  }
  command <<<
    hicCompareMatrices \
      ~{if defined(matricesMatrices) then ("--matrices " +  '"' + matricesMatrices + '"') else ""} \
      ~{if defined(outOutFilename) then ("--outFileName " +  '"' + outOutFilename + '"') else ""} \
      ~{if defined(operationOperation) then ("--operation " +  '"' + operationOperation + '"') else ""}
  >>>
}