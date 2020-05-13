version 1.0

task ComputeMatrixOperationsCbind {
  input {
    Array[String]+ matrixMatrixFile
    String outOutFilename
  }
  command <<<
    computeMatrixOperations cbind \
      ~{if defined(matrixMatrixFile) then ("--matrixFile " +  '"' + matrixMatrixFile + '"') else ""} \
      ~{if defined(outOutFilename) then ("--outFileName " +  '"' + outOutFilename + '"') else ""}
  >>>
}