version 1.0

task ScanpyCliDpt {
  input {
    Boolean inputInputFormat
    Boolean outputOutputFormat
    Int zarrZarrChunkSize
    File exportExportMtx
    Boolean showShowObj
    String useUseGraph
    String keyKeyAdded
    String rootRoot
    Int nNDcs
    Int nNBranchings
    Float minMinGroupSize
  }
  command <<<
    scanpy-cli dpt \
      ~{true="--input-format" false="" inputInputFormat} \
      ~{true="--output-format" false="" outputOutputFormat} \
      ~{if defined(zarrZarrChunkSize) then ("--zarr-chunk-size " +  '"' + zarrZarrChunkSize + '"') else ""} \
      ~{if defined(exportExportMtx) then ("--export-mtx " +  '"' + exportExportMtx + '"') else ""} \
      ~{true="--show-obj" false="" showShowObj} \
      ~{if defined(useUseGraph) then ("--use-graph " +  '"' + useUseGraph + '"') else ""} \
      ~{if defined(keyKeyAdded) then ("--key-added " +  '"' + keyKeyAdded + '"') else ""} \
      ~{if defined(rootRoot) then ("--root " +  '"' + rootRoot + '"') else ""} \
      ~{if defined(nNDcs) then ("--n-dcs " +  '"' + nNDcs + '"') else ""} \
      ~{if defined(nNBranchings) then ("--n-branchings " +  '"' + nNBranchings + '"') else ""} \
      ~{if defined(minMinGroupSize) then ("--min-group-size " +  '"' + minMinGroupSize + '"') else ""}
  >>>
}