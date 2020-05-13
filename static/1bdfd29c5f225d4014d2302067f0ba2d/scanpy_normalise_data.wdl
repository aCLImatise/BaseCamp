version 1.0

task ScanpyNormaliseData {
  input {
    Boolean inputInputFormat
    Boolean outputOutputFormat
    Int zarrZarrChunkSize
    File exportExportMtx
    Boolean showShowObj
    Boolean saveSaveRaw
    Boolean noNoLogTransform
    Float normalizeNormalizeTo
    Float fractionFraction
  }
  command <<<
    scanpy-normalise-data \
      ~{true="--input-format" false="" inputInputFormat} \
      ~{true="--output-format" false="" outputOutputFormat} \
      ~{if defined(zarrZarrChunkSize) then ("--zarr-chunk-size " +  '"' + zarrZarrChunkSize + '"') else ""} \
      ~{if defined(exportExportMtx) then ("--export-mtx " +  '"' + exportExportMtx + '"') else ""} \
      ~{true="--show-obj" false="" showShowObj} \
      ~{true="--save-raw" false="" saveSaveRaw} \
      ~{true="--no-log-transform" false="" noNoLogTransform} \
      ~{if defined(normalizeNormalizeTo) then ("--normalize-to " +  '"' + normalizeNormalizeTo + '"') else ""} \
      ~{if defined(fractionFraction) then ("--fraction " +  '"' + fractionFraction + '"') else ""}
  >>>
}