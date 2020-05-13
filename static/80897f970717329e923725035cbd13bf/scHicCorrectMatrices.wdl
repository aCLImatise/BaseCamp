version 1.0

task ScHicCorrectMatrices {
  input {
    String matrixMatrix
    String outOutFilename
    String threadsThreads
  }
  command <<<
    scHicCorrectMatrices \
      ~{if defined(matrixMatrix) then ("--matrix " +  '"' + matrixMatrix + '"') else ""} \
      ~{if defined(outOutFilename) then ("--outFileName " +  '"' + outOutFilename + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}