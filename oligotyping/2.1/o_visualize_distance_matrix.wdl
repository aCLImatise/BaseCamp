version 1.0

task OVisualizeDistanceMatrix.R {
  input {
    String metadataMetadata
    String otuOtuLimits
    String outputOutputFilePrefix
    String distanceDistanceCol
    String distanceDistanceRow
    String clusteringClustering
    String pdfPdfSize
    String treeTreeHeightCol
    String treeTreeHeightRow
    String titleTitle
    String? heatHeatMapR
    String? inputInputFile
  }
  command <<<
    o-visualize-distance-matrix.R \
      ~{heatHeatMapR} \
      ~{if defined(metadataMetadata) then ("--metadata " +  '"' + metadataMetadata + '"') else ""} \
      ~{if defined(otuOtuLimits) then ("--otu_limits " +  '"' + otuOtuLimits + '"') else ""} \
      ~{if defined(outputOutputFilePrefix) then ("--output_file_prefix " +  '"' + outputOutputFilePrefix + '"') else ""} \
      ~{if defined(distanceDistanceCol) then ("--distance_col " +  '"' + distanceDistanceCol + '"') else ""} \
      ~{if defined(distanceDistanceRow) then ("--distance_row " +  '"' + distanceDistanceRow + '"') else ""} \
      ~{if defined(clusteringClustering) then ("--clustering " +  '"' + clusteringClustering + '"') else ""} \
      ~{if defined(pdfPdfSize) then ("--pdf_size " +  '"' + pdfPdfSize + '"') else ""} \
      ~{if defined(treeTreeHeightCol) then ("--treeheight_col " +  '"' + treeTreeHeightCol + '"') else ""} \
      ~{if defined(treeTreeHeightRow) then ("--treeheight_row " +  '"' + treeTreeHeightRow + '"') else ""} \
      ~{if defined(titleTitle) then ("--title " +  '"' + titleTitle + '"') else ""} \
      ~{inputInputFile}
  >>>
}