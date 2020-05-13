version 1.0

task ScanpyFilterCells {
  input {
    Boolean inputInputFormat
    Boolean outputOutputFormat
    Int zarrZarrChunkSize
    File exportExportMtx
    Boolean showShowObj
    String geneGeneName
    Boolean listListAttr
    String paramParam
    Boolean categoryCategory
    String subsetSubset
    Boolean forceForceRecalc
  }
  command <<<
    scanpy-filter-cells \
      ~{true="--input-format" false="" inputInputFormat} \
      ~{true="--output-format" false="" outputOutputFormat} \
      ~{if defined(zarrZarrChunkSize) then ("--zarr-chunk-size " +  '"' + zarrZarrChunkSize + '"') else ""} \
      ~{if defined(exportExportMtx) then ("--export-mtx " +  '"' + exportExportMtx + '"') else ""} \
      ~{true="--show-obj" false="" showShowObj} \
      ~{if defined(geneGeneName) then ("--gene-name " +  '"' + geneGeneName + '"') else ""} \
      ~{true="--list-attr" false="" listListAttr} \
      ~{if defined(paramParam) then ("--param " +  '"' + paramParam + '"') else ""} \
      ~{true="--category" false="" categoryCategory} \
      ~{if defined(subsetSubset) then ("--subset " +  '"' + subsetSubset + '"') else ""} \
      ~{true="--force-recalc" false="" forceForceRecalc}
  >>>
}