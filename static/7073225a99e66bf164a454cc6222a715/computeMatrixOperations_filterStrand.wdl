version 1.0

task ComputeMatrixOperationsFilterStrand {
  input {
    String matrixMatrixFile
    String outOutFilename
    Boolean strandStrand
  }
  command <<<
    computeMatrixOperations filterStrand \
      ~{if defined(matrixMatrixFile) then ("--matrixFile " +  '"' + matrixMatrixFile + '"') else ""} \
      ~{if defined(outOutFilename) then ("--outFileName " +  '"' + outOutFilename + '"') else ""} \
      ~{true="--strand" false="" strandStrand}
  >>>
}