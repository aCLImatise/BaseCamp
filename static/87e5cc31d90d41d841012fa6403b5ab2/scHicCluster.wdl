version 1.0

task ScHicCluster {
  input {
    String matrixMatrix
    String numberNumberOfClusters
    String clusterClusterMethod
    Array[String]+ chromosomesChromosomes
    String dimensionDimensionReductionMethod
    String numberNumberOfNearestNeighbors
    String outOutFilename
    String threadsThreads
  }
  command <<<
    scHicCluster \
      ~{if defined(matrixMatrix) then ("--matrix " +  '"' + matrixMatrix + '"') else ""} \
      ~{if defined(numberNumberOfClusters) then ("--numberOfClusters " +  '"' + numberNumberOfClusters + '"') else ""} \
      ~{if defined(clusterClusterMethod) then ("--clusterMethod " +  '"' + clusterClusterMethod + '"') else ""} \
      ~{if defined(chromosomesChromosomes) then ("--chromosomes " +  '"' + chromosomesChromosomes + '"') else ""} \
      ~{if defined(dimensionDimensionReductionMethod) then ("--dimensionReductionMethod " +  '"' + dimensionDimensionReductionMethod + '"') else ""} \
      ~{if defined(numberNumberOfNearestNeighbors) then ("--numberOfNearestNeighbors " +  '"' + numberNumberOfNearestNeighbors + '"') else ""} \
      ~{if defined(outOutFilename) then ("--outFileName " +  '"' + outOutFilename + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}