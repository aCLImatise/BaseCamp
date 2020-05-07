version 1.0

task ScanpyCliEmbedDiffmap {
  input {
    Boolean inputInputFormat
    Boolean outputOutputFormat
    Int zarrZarrChunkSize
    File exportExportMtx
    Boolean showShowObj
    String useUseGraph
    String keyKeyAdded
    File exportExportEmbedding
    Int nNComps
  }
  command <<<
    scanpy-cli embed diffmap \
      ~{true="--input-format" false="" inputInputFormat} \
      ~{true="--output-format" false="" outputOutputFormat} \
      ~{if defined(zarrZarrChunkSize) then ("--zarr-chunk-size " +  '"' + zarrZarrChunkSize + '"') else ""} \
      ~{if defined(exportExportMtx) then ("--export-mtx " +  '"' + exportExportMtx + '"') else ""} \
      ~{true="--show-obj" false="" showShowObj} \
      ~{if defined(useUseGraph) then ("--use-graph " +  '"' + useUseGraph + '"') else ""} \
      ~{if defined(keyKeyAdded) then ("--key-added " +  '"' + keyKeyAdded + '"') else ""} \
      ~{if defined(exportExportEmbedding) then ("--export-embedding " +  '"' + exportExportEmbedding + '"') else ""} \
      ~{if defined(nNComps) then ("--n-comps " +  '"' + nNComps + '"') else ""}
  >>>
}