version 1.0

task ScHicCreateBulkMatrix {
  input {
    String matrixMatrix
    String outOutFilename
    String threadsThreads
  }
  command <<<
    scHicCreateBulkMatrix \
      ~{if defined(matrixMatrix) then ("--matrix " +  '"' + matrixMatrix + '"') else ""} \
      ~{if defined(outOutFilename) then ("--outFileName " +  '"' + outOutFilename + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}