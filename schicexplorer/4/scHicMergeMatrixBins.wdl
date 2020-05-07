version 1.0

task ScHicMergeMatrixBins {
  input {
    String matrixMatrix
    String outOutFilename
    Int numNumBins
    Boolean runningRunningWindow
    String threadsThreads
  }
  command <<<
    scHicMergeMatrixBins \
      ~{if defined(matrixMatrix) then ("--matrix " +  '"' + matrixMatrix + '"') else ""} \
      ~{if defined(outOutFilename) then ("--outFileName " +  '"' + outOutFilename + '"') else ""} \
      ~{if defined(numNumBins) then ("--numBins " +  '"' + numNumBins + '"') else ""} \
      ~{true="--runningWindow" false="" runningRunningWindow} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}