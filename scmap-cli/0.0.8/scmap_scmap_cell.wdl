version 1.0

task ScmapScmapCell.R {
  input {
    String indexIndexObjectFile
    String projectionProjectionObjectFile
    String numberNumberNearestNeighbours
    String clusterClusterCol
    String outputOutputObjectFile
    String outputOutputClustersTextFile
    String closestClosestCellsTextFile
    String closestClosestCellsSimilaritiesTextFile
  }
  command <<<
    scmap-scmap-cell.R \
      ~{if defined(indexIndexObjectFile) then ("--index-object-file " +  '"' + indexIndexObjectFile + '"') else ""} \
      ~{if defined(projectionProjectionObjectFile) then ("--projection-object-file " +  '"' + projectionProjectionObjectFile + '"') else ""} \
      ~{if defined(numberNumberNearestNeighbours) then ("--number-nearest-neighbours " +  '"' + numberNumberNearestNeighbours + '"') else ""} \
      ~{if defined(clusterClusterCol) then ("--cluster-col " +  '"' + clusterClusterCol + '"') else ""} \
      ~{if defined(outputOutputObjectFile) then ("--output-object-file " +  '"' + outputOutputObjectFile + '"') else ""} \
      ~{if defined(outputOutputClustersTextFile) then ("--output-clusters-text-file " +  '"' + outputOutputClustersTextFile + '"') else ""} \
      ~{if defined(closestClosestCellsTextFile) then ("--closest-cells-text-file " +  '"' + closestClosestCellsTextFile + '"') else ""} \
      ~{if defined(closestClosestCellsSimilaritiesTextFile) then ("--closest-cells-similarities-text-file " +  '"' + closestClosestCellsSimilaritiesTextFile + '"') else ""}
  >>>
}