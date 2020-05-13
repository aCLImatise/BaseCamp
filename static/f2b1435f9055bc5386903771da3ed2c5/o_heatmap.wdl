version 1.0

task OHeatmap.R {
  input {
    String metadataMetadata
    String outputOutputFilePrefix
    String distanceDistanceCol
    String distanceDistanceRow
    String clusteringClustering
    String pdfPdfHeight
    String treeTreeHeightCol
    String treeTreeHeightRow
    String showShowRowNames
    String scaleScaleTheOtherWay
    String titleTitle
    String? heatHeatMapR
    String? inputInputFile
  }
  command <<<
    o-heatmap.R \
      ~{heatHeatMapR} \
      ~{if defined(metadataMetadata) then ("--metadata " +  '"' + metadataMetadata + '"') else ""} \
      ~{if defined(outputOutputFilePrefix) then ("--output_file_prefix " +  '"' + outputOutputFilePrefix + '"') else ""} \
      ~{if defined(distanceDistanceCol) then ("--distance_col " +  '"' + distanceDistanceCol + '"') else ""} \
      ~{if defined(distanceDistanceRow) then ("--distance_row " +  '"' + distanceDistanceRow + '"') else ""} \
      ~{if defined(clusteringClustering) then ("--clustering " +  '"' + clusteringClustering + '"') else ""} \
      ~{if defined(pdfPdfHeight) then ("--pdf_height " +  '"' + pdfPdfHeight + '"') else ""} \
      ~{if defined(treeTreeHeightCol) then ("--treeheight_col " +  '"' + treeTreeHeightCol + '"') else ""} \
      ~{if defined(treeTreeHeightRow) then ("--treeheight_row " +  '"' + treeTreeHeightRow + '"') else ""} \
      ~{if defined(showShowRowNames) then ("--show_rownames " +  '"' + showShowRowNames + '"') else ""} \
      ~{if defined(scaleScaleTheOtherWay) then ("--scale_the_other_way " +  '"' + scaleScaleTheOtherWay + '"') else ""} \
      ~{if defined(titleTitle) then ("--title " +  '"' + titleTitle + '"') else ""} \
      ~{inputInputFile}
  >>>
}