version 1.0

task ComputeMatrixOperationsFilterValues {
  input {
    String matrixMatrixFile
    String outOutFilename
    Int minMin
    Int maxMax
  }
  command <<<
    computeMatrixOperations filterValues \
      ~{if defined(matrixMatrixFile) then ("--matrixFile " +  '"' + matrixMatrixFile + '"') else ""} \
      ~{if defined(outOutFilename) then ("--outFileName " +  '"' + outOutFilename + '"') else ""} \
      ~{if defined(minMin) then ("--min " +  '"' + minMin + '"') else ""} \
      ~{if defined(maxMax) then ("--max " +  '"' + maxMax + '"') else ""}
  >>>
}