version 1.0

task ScHicPlotClusterProfiles {
  input {
    String matrixMatrix
    String clustersClusters
    Array[String]+ chromosomesChromosomes
    Int maximalMaximalDistance
    String distanceDistanceShortRange
    String distanceDistanceLongRange
    String orderOrderBy
    String outOutFilename
    String dpiDpi
    String threadsThreads
  }
  command <<<
    scHicPlotClusterProfiles \
      ~{if defined(matrixMatrix) then ("--matrix " +  '"' + matrixMatrix + '"') else ""} \
      ~{if defined(clustersClusters) then ("--clusters " +  '"' + clustersClusters + '"') else ""} \
      ~{if defined(chromosomesChromosomes) then ("--chromosomes " +  '"' + chromosomesChromosomes + '"') else ""} \
      ~{if defined(maximalMaximalDistance) then ("--maximalDistance " +  '"' + maximalMaximalDistance + '"') else ""} \
      ~{if defined(distanceDistanceShortRange) then ("--distanceShortRange " +  '"' + distanceDistanceShortRange + '"') else ""} \
      ~{if defined(distanceDistanceLongRange) then ("--distanceLongRange " +  '"' + distanceDistanceLongRange + '"') else ""} \
      ~{if defined(orderOrderBy) then ("--orderBy " +  '"' + orderOrderBy + '"') else ""} \
      ~{if defined(outOutFilename) then ("--outFileName " +  '"' + outOutFilename + '"') else ""} \
      ~{if defined(dpiDpi) then ("--dpi " +  '"' + dpiDpi + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}