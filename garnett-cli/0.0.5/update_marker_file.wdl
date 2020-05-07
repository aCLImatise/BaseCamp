version 1.0

task UpdateMarkerFile.R {
  input {
    String markerMarkerListObj
    String markerMarkerCheckFile
    String summarySummaryCol
    String cellCellTypeCol
    String geneGeneIdCol
    String updatedUpdatedMarkerFile
  }
  command <<<
    update_marker_file.R \
      ~{if defined(markerMarkerListObj) then ("--marker-list-obj " +  '"' + markerMarkerListObj + '"') else ""} \
      ~{if defined(markerMarkerCheckFile) then ("--marker-check-file " +  '"' + markerMarkerCheckFile + '"') else ""} \
      ~{if defined(summarySummaryCol) then ("--summary-col " +  '"' + summarySummaryCol + '"') else ""} \
      ~{if defined(cellCellTypeCol) then ("--cell-type-col " +  '"' + cellCellTypeCol + '"') else ""} \
      ~{if defined(geneGeneIdCol) then ("--gene-id-col " +  '"' + geneGeneIdCol + '"') else ""} \
      ~{if defined(updatedUpdatedMarkerFile) then ("--updated-marker-file " +  '"' + updatedUpdatedMarkerFile + '"') else ""}
  >>>
}