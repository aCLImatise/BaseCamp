version 1.0

task ComputeMatrixOperationsInfo {
  input {
    String matrixMatrixFile
  }
  command <<<
    computeMatrixOperations info \
      ~{if defined(matrixMatrixFile) then ("--matrixFile " +  '"' + matrixMatrixFile + '"') else ""}
  >>>
}