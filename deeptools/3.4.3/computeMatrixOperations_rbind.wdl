version 1.0

task ComputeMatrixOperationsRbind {
  input {
    Array[String]+ matrixMatrixFile
    String outOutFilename
  }
  command <<<
    computeMatrixOperations rbind \
      ~{if defined(matrixMatrixFile) then ("--matrixFile " +  '"' + matrixMatrixFile + '"') else ""} \
      ~{if defined(outOutFilename) then ("--outFileName " +  '"' + outOutFilename + '"') else ""}
  >>>
}