version 1.0

task ScanpyCliClusterLouvain {
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
    Boolean flavorFlavor
    Float resolutionResolution
  }
  command <<<
    scanpy-cli cluster louvain \
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
      ~{true="--flavor" false="" flavorFlavor} \
      ~{if defined(resolutionResolution) then ("--resolution " +  '"' + resolutionResolution + '"') else ""}
  >>>
}