version 1.0

task ScHicNormalize {
  input {
    String matrixMatrix
    String outOutFilename
    String threadsThreads
    String setSetToZeroThreshold
  }
  command <<<
    scHicNormalize \
      ~{if defined(matrixMatrix) then ("--matrix " +  '"' + matrixMatrix + '"') else ""} \
      ~{if defined(outOutFilename) then ("--outFileName " +  '"' + outOutFilename + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(setSetToZeroThreshold) then ("--setToZeroThreshold " +  '"' + setSetToZeroThreshold + '"') else ""}
  >>>
}