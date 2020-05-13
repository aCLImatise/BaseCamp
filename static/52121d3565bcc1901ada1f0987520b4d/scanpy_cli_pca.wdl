version 1.0

task ScanpyCliPca {
  input {
    Boolean inputInputFormat
    Boolean outputOutputFormat
    Int zarrZarrChunkSize
    File exportExportMtx
    Boolean showShowObj
    Boolean noNoZeroCenter
    Int randomRandomState
    File exportExportEmbedding
    Int nNComps
    Boolean svdSvdSolver
    Boolean useUseAll
    Boolean chunkedChunked
    Int chunkChunkSize
  }
  command <<<
    scanpy-cli pca \
      ~{true="--input-format" false="" inputInputFormat} \
      ~{true="--output-format" false="" outputOutputFormat} \
      ~{if defined(zarrZarrChunkSize) then ("--zarr-chunk-size " +  '"' + zarrZarrChunkSize + '"') else ""} \
      ~{if defined(exportExportMtx) then ("--export-mtx " +  '"' + exportExportMtx + '"') else ""} \
      ~{true="--show-obj" false="" showShowObj} \
      ~{true="--no-zero-center" false="" noNoZeroCenter} \
      ~{if defined(randomRandomState) then ("--random-state " +  '"' + randomRandomState + '"') else ""} \
      ~{if defined(exportExportEmbedding) then ("--export-embedding " +  '"' + exportExportEmbedding + '"') else ""} \
      ~{if defined(nNComps) then ("--n-comps " +  '"' + nNComps + '"') else ""} \
      ~{true="--svd-solver" false="" svdSvdSolver} \
      ~{true="--use-all" false="" useUseAll} \
      ~{true="--chunked" false="" chunkedChunked} \
      ~{if defined(chunkChunkSize) then ("--chunk-size " +  '"' + chunkChunkSize + '"') else ""}
  >>>
}