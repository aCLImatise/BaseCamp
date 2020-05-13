version 1.0

task ScHicClusterSVL {
  input {
    String matrixMatrix
    String numberNumberOfClusters
    String clusterClusterMethod
    String outOutFilename
    String distanceDistanceShortRange
    String distanceDistanceLongRange
    String threadsThreads
  }
  command <<<
    scHicClusterSVL \
      ~{if defined(matrixMatrix) then ("--matrix " +  '"' + matrixMatrix + '"') else ""} \
      ~{if defined(numberNumberOfClusters) then ("--numberOfClusters " +  '"' + numberNumberOfClusters + '"') else ""} \
      ~{if defined(clusterClusterMethod) then ("--clusterMethod " +  '"' + clusterClusterMethod + '"') else ""} \
      ~{if defined(outOutFilename) then ("--outFileName " +  '"' + outOutFilename + '"') else ""} \
      ~{if defined(distanceDistanceShortRange) then ("--distanceShortRange " +  '"' + distanceDistanceShortRange + '"') else ""} \
      ~{if defined(distanceDistanceLongRange) then ("--distanceLongRange " +  '"' + distanceDistanceLongRange + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}