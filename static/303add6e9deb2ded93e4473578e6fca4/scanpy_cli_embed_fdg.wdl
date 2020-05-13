version 1.0

task ScanpyCliEmbedFdg {
  input {
    Boolean inputInputFormat
    Boolean outputOutputFormat
    Int zarrZarrChunkSize
    File exportExportMtx
    Boolean showShowObj
    String useUseGraph
    Int randomRandomState
    String keyKeyAdded
    File exportExportEmbedding
    String inInItPos
    Boolean layoutLayout
    String inInItPos
  }
  command <<<
    scanpy-cli embed fdg \
      ~{true="--input-format" false="" inputInputFormat} \
      ~{true="--output-format" false="" outputOutputFormat} \
      ~{if defined(zarrZarrChunkSize) then ("--zarr-chunk-size " +  '"' + zarrZarrChunkSize + '"') else ""} \
      ~{if defined(exportExportMtx) then ("--export-mtx " +  '"' + exportExportMtx + '"') else ""} \
      ~{true="--show-obj" false="" showShowObj} \
      ~{if defined(useUseGraph) then ("--use-graph " +  '"' + useUseGraph + '"') else ""} \
      ~{if defined(randomRandomState) then ("--random-state " +  '"' + randomRandomState + '"') else ""} \
      ~{if defined(keyKeyAdded) then ("--key-added " +  '"' + keyKeyAdded + '"') else ""} \
      ~{if defined(exportExportEmbedding) then ("--export-embedding " +  '"' + exportExportEmbedding + '"') else ""} \
      ~{if defined(inInItPos) then ("--init-pos " +  '"' + inInItPos + '"') else ""} \
      ~{true="--layout" false="" layoutLayout} \
      ~{if defined(inInItPos) then ("--init-pos " +  '"' + inInItPos + '"') else ""}
  >>>
}