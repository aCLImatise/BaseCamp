version 1.0

task ScHicClusterMinHash {
  input {
    String matrixMatrix
    String numberNumberOfClusters
    String clusterClusterMethod
    String outOutFilename
    Boolean exactExactModemInHash
    String saveSaveIntermediateRawMatrix
    String numberNumberOfHashFunctions
    String numberNumberOfNearestNeighbors
    String shareShareOfMatrixToBeTransferred
    Array[String]+ chromosomesChromosomes
    String threadsThreads
  }
  command <<<
    scHicClusterMinHash \
      ~{if defined(matrixMatrix) then ("--matrix " +  '"' + matrixMatrix + '"') else ""} \
      ~{if defined(numberNumberOfClusters) then ("--numberOfClusters " +  '"' + numberNumberOfClusters + '"') else ""} \
      ~{if defined(clusterClusterMethod) then ("--clusterMethod " +  '"' + clusterClusterMethod + '"') else ""} \
      ~{if defined(outOutFilename) then ("--outFileName " +  '"' + outOutFilename + '"') else ""} \
      ~{true="--exactModeMinHash" false="" exactExactModemInHash} \
      ~{if defined(saveSaveIntermediateRawMatrix) then ("--saveIntermediateRawMatrix " +  '"' + saveSaveIntermediateRawMatrix + '"') else ""} \
      ~{if defined(numberNumberOfHashFunctions) then ("--numberOfHashFunctions " +  '"' + numberNumberOfHashFunctions + '"') else ""} \
      ~{if defined(numberNumberOfNearestNeighbors) then ("--numberOfNearestNeighbors " +  '"' + numberNumberOfNearestNeighbors + '"') else ""} \
      ~{if defined(shareShareOfMatrixToBeTransferred) then ("--shareOfMatrixToBeTransferred " +  '"' + shareShareOfMatrixToBeTransferred + '"') else ""} \
      ~{if defined(chromosomesChromosomes) then ("--chromosomes " +  '"' + chromosomesChromosomes + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}