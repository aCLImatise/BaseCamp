version 1.0

task ScanpyCliDiffexp {
  input {
    Boolean inputInputFormat
    Boolean outputOutputFormat
    Int zarrZarrChunkSize
    File exportExportMtx
    Boolean showShowObj
    Boolean useUseRaw
    String groupGroupBy
    String groupsGroups
    String referenceReference
    Int nNGenes
    Boolean methodMethod
    Boolean corrCorrMethod
    Boolean rankRankByAbs
    String filterFilterParams
    String logLogRegParam
    File saveSave
  }
  command <<<
    scanpy-cli diffexp \
      ~{true="--input-format" false="" inputInputFormat} \
      ~{true="--output-format" false="" outputOutputFormat} \
      ~{if defined(zarrZarrChunkSize) then ("--zarr-chunk-size " +  '"' + zarrZarrChunkSize + '"') else ""} \
      ~{if defined(exportExportMtx) then ("--export-mtx " +  '"' + exportExportMtx + '"') else ""} \
      ~{true="--show-obj" false="" showShowObj} \
      ~{true="--use-raw" false="" useUseRaw} \
      ~{if defined(groupGroupBy) then ("--groupby " +  '"' + groupGroupBy + '"') else ""} \
      ~{if defined(groupsGroups) then ("--groups " +  '"' + groupsGroups + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(nNGenes) then ("--n-genes " +  '"' + nNGenes + '"') else ""} \
      ~{true="--method" false="" methodMethod} \
      ~{true="--corr-method" false="" corrCorrMethod} \
      ~{true="--rankby-abs" false="" rankRankByAbs} \
      ~{if defined(filterFilterParams) then ("--filter-params " +  '"' + filterFilterParams + '"') else ""} \
      ~{if defined(logLogRegParam) then ("--logreg-param " +  '"' + logLogRegParam + '"') else ""} \
      ~{if defined(saveSave) then ("--save " +  '"' + saveSave + '"') else ""}
  >>>
}