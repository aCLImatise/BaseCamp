version 1.0

task ScHicConsensusMatrices {
  input {
    String matrixMatrix
    String clustersClusters
    String outOutFilename
    String threadsThreads
  }
  command <<<
    scHicConsensusMatrices \
      ~{if defined(matrixMatrix) then ("--matrix " +  '"' + matrixMatrix + '"') else ""} \
      ~{if defined(clustersClusters) then ("--clusters " +  '"' + clustersClusters + '"') else ""} \
      ~{if defined(outOutFilename) then ("--outFileName " +  '"' + outOutFilename + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}