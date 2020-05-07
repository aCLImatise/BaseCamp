version 1.0

task ComputeMatrixOperationsSubset {
  input {
    String matrixMatrixFile
    String outOutFilename
    Array[String]+ groupsGroups
    Array[String]+ samplesSamples
  }
  command <<<
    computeMatrixOperations subset \
      ~{if defined(matrixMatrixFile) then ("--matrixFile " +  '"' + matrixMatrixFile + '"') else ""} \
      ~{if defined(outOutFilename) then ("--outFileName " +  '"' + outOutFilename + '"') else ""} \
      ~{if defined(groupsGroups) then ("--groups " +  '"' + groupsGroups + '"') else ""} \
      ~{if defined(samplesSamples) then ("--samples " +  '"' + samplesSamples + '"') else ""}
  >>>
}