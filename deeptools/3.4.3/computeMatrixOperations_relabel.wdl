version 1.0

task ComputeMatrixOperationsRelabel {
  input {
    String matrixMatrixFile
    String outOutFilename
    Array[String]+ groupGroupLabels
    Array[String]+ sampleSampleLabels
  }
  command <<<
    computeMatrixOperations relabel \
      ~{if defined(matrixMatrixFile) then ("--matrixFile " +  '"' + matrixMatrixFile + '"') else ""} \
      ~{if defined(outOutFilename) then ("--outFileName " +  '"' + outOutFilename + '"') else ""} \
      ~{if defined(groupGroupLabels) then ("--groupLabels " +  '"' + groupGroupLabels + '"') else ""} \
      ~{if defined(sampleSampleLabels) then ("--sampleLabels " +  '"' + sampleSampleLabels + '"') else ""}
  >>>
}