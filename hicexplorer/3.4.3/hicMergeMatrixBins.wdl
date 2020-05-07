version 1.0

task HicMergeMatrixBins {
  input {
    Int numNumBins
    String matrixMatrix
    String outOutFilename
    Int numNumBins
    Boolean runningRunningWindow
  }
  command <<<
    hicMergeMatrixBins \
      ~{if defined(numNumBins) then ("--numBins " +  '"' + numNumBins + '"') else ""} \
      ~{if defined(matrixMatrix) then ("--matrix " +  '"' + matrixMatrix + '"') else ""} \
      ~{if defined(outOutFilename) then ("--outFileName " +  '"' + outOutFilename + '"') else ""} \
      ~{if defined(numNumBins) then ("--numBins " +  '"' + numNumBins + '"') else ""} \
      ~{true="--runningWindow" false="" runningRunningWindow}
  >>>
}