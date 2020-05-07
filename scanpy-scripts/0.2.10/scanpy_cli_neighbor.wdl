version 1.0

task ScanpyCliNeighbor {
  input {
    Boolean inputInputFormat
    Boolean outputOutputFormat
    Int zarrZarrChunkSize
    File exportExportMtx
    Boolean showShowObj
    Int nNPcs
    String useUseRep
    String keyKeyAdded
    Int randomRandomState
    Int nNNeighbors
    Boolean noNoKnn
    Boolean methodMethod
  }
  command <<<
    scanpy-cli neighbor \
      ~{true="--input-format" false="" inputInputFormat} \
      ~{true="--output-format" false="" outputOutputFormat} \
      ~{if defined(zarrZarrChunkSize) then ("--zarr-chunk-size " +  '"' + zarrZarrChunkSize + '"') else ""} \
      ~{if defined(exportExportMtx) then ("--export-mtx " +  '"' + exportExportMtx + '"') else ""} \
      ~{true="--show-obj" false="" showShowObj} \
      ~{if defined(nNPcs) then ("--n-pcs " +  '"' + nNPcs + '"') else ""} \
      ~{if defined(useUseRep) then ("--use-rep " +  '"' + useUseRep + '"') else ""} \
      ~{if defined(keyKeyAdded) then ("--key-added " +  '"' + keyKeyAdded + '"') else ""} \
      ~{if defined(randomRandomState) then ("--random-state " +  '"' + randomRandomState + '"') else ""} \
      ~{if defined(nNNeighbors) then ("--n-neighbors " +  '"' + nNNeighbors + '"') else ""} \
      ~{true="--no-knn" false="" noNoKnn} \
      ~{true="--method" false="" methodMethod}
  >>>
}