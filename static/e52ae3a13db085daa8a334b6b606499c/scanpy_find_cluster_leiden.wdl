version 1.0

task ScanpyFindClusterLeiden {
  input {
    Boolean inputInputFormat
    Boolean outputOutputFormat
    Int zarrZarrChunkSize
    File exportExportMtx
    Boolean showShowObj
    File exportExportCluster
    String useUseGraph
    Boolean directedDirected
    Boolean useUseWeights
    Boolean restrictRestrictTo
    Int randomRandomState
    String keyKeyAdded
    Float resolutionResolution
    Int nNIterations
  }
  command <<<
    scanpy-find-cluster leiden \
      ~{true="--input-format" false="" inputInputFormat} \
      ~{true="--output-format" false="" outputOutputFormat} \
      ~{if defined(zarrZarrChunkSize) then ("--zarr-chunk-size " +  '"' + zarrZarrChunkSize + '"') else ""} \
      ~{if defined(exportExportMtx) then ("--export-mtx " +  '"' + exportExportMtx + '"') else ""} \
      ~{true="--show-obj" false="" showShowObj} \
      ~{if defined(exportExportCluster) then ("--export-cluster " +  '"' + exportExportCluster + '"') else ""} \
      ~{if defined(useUseGraph) then ("--use-graph " +  '"' + useUseGraph + '"') else ""} \
      ~{true="--directed" false="" directedDirected} \
      ~{true="--use-weights" false="" useUseWeights} \
      ~{true="--restrict-to" false="" restrictRestrictTo} \
      ~{if defined(randomRandomState) then ("--random-state " +  '"' + randomRandomState + '"') else ""} \
      ~{if defined(keyKeyAdded) then ("--key-added " +  '"' + keyKeyAdded + '"') else ""} \
      ~{if defined(resolutionResolution) then ("--resolution " +  '"' + resolutionResolution + '"') else ""} \
      ~{if defined(nNIterations) then ("--n-iterations " +  '"' + nNIterations + '"') else ""}
  >>>
}