version 1.0

task TransformMarkerFile.R {
  input {
    String inputInputMarkerFile
    String markerMarkerList
    String pvalPvalCol
    String pvalPvalThreshold
    String groupsGroupsCol
    String geneGeneNames
    String garnettGarnettMarkerFile
  }
  command <<<
    transform_marker_file.R \
      ~{if defined(inputInputMarkerFile) then ("--input-marker-file " +  '"' + inputInputMarkerFile + '"') else ""} \
      ~{if defined(markerMarkerList) then ("--marker-list " +  '"' + markerMarkerList + '"') else ""} \
      ~{if defined(pvalPvalCol) then ("--pval-col " +  '"' + pvalPvalCol + '"') else ""} \
      ~{if defined(pvalPvalThreshold) then ("--pval-threshold " +  '"' + pvalPvalThreshold + '"') else ""} \
      ~{if defined(groupsGroupsCol) then ("--groups-col " +  '"' + groupsGroupsCol + '"') else ""} \
      ~{if defined(geneGeneNames) then ("--gene-names " +  '"' + geneGeneNames + '"') else ""} \
      ~{if defined(garnettGarnettMarkerFile) then ("--garnett-marker-file " +  '"' + garnettGarnettMarkerFile + '"') else ""}
  >>>
}