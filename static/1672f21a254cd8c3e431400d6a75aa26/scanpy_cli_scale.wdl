version 1.0

task ScanpyCliScale {
  input {
    Boolean inputInputFormat
    Boolean outputOutputFormat
    Int zarrZarrChunkSize
    File exportExportMtx
    Boolean showShowObj
    Boolean noNoZeroCenter
    Float maxMaxValue
  }
  command <<<
    scanpy-cli scale \
      ~{true="--input-format" false="" inputInputFormat} \
      ~{true="--output-format" false="" outputOutputFormat} \
      ~{if defined(zarrZarrChunkSize) then ("--zarr-chunk-size " +  '"' + zarrZarrChunkSize + '"') else ""} \
      ~{if defined(exportExportMtx) then ("--export-mtx " +  '"' + exportExportMtx + '"') else ""} \
      ~{true="--show-obj" false="" showShowObj} \
      ~{true="--no-zero-center" false="" noNoZeroCenter} \
      ~{if defined(maxMaxValue) then ("--max-value " +  '"' + maxMaxValue + '"') else ""}
  >>>
}