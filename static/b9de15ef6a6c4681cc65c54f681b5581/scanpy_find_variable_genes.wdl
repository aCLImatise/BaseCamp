version 1.0

task ScanpyFindVariableGenes {
  input {
    Boolean inputInputFormat
    Boolean outputOutputFormat
    Int zarrZarrChunkSize
    File exportExportMtx
    Boolean showShowObj
    Float meanMeanLimits
    Float dispDispLimits
    Int nNBins
    Int nNTopGenes
    Boolean flavorFlavor
    Boolean subsetSubset
    String byByBatch
  }
  command <<<
    scanpy-find-variable-genes \
      ~{true="--input-format" false="" inputInputFormat} \
      ~{true="--output-format" false="" outputOutputFormat} \
      ~{if defined(zarrZarrChunkSize) then ("--zarr-chunk-size " +  '"' + zarrZarrChunkSize + '"') else ""} \
      ~{if defined(exportExportMtx) then ("--export-mtx " +  '"' + exportExportMtx + '"') else ""} \
      ~{true="--show-obj" false="" showShowObj} \
      ~{if defined(meanMeanLimits) then ("--mean-limits " +  '"' + meanMeanLimits + '"') else ""} \
      ~{if defined(dispDispLimits) then ("--disp-limits " +  '"' + dispDispLimits + '"') else ""} \
      ~{if defined(nNBins) then ("--n-bins " +  '"' + nNBins + '"') else ""} \
      ~{if defined(nNTopGenes) then ("--n-top-genes " +  '"' + nNTopGenes + '"') else ""} \
      ~{true="--flavor" false="" flavorFlavor} \
      ~{true="--subset" false="" subsetSubset} \
      ~{if defined(byByBatch) then ("--by-batch " +  '"' + byByBatch + '"') else ""}
  >>>
}