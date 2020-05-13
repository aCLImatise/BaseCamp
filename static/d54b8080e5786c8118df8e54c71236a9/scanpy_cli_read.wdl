version 1.0

task ScanpyCliRead {
  input {
    File inputInput10xH5
    Directory inputInput10xMtx
    Boolean outputOutputFormat
    Int zarrZarrChunkSize
    File exportExportMtx
    Boolean showShowObj
    String genomeGenome
    Boolean varVarNames
    File extraExtraObs
    File extraExtraVar
  }
  command <<<
    scanpy-cli read \
      ~{if defined(inputInput10xH5) then ("--input-10x-h5 " +  '"' + inputInput10xH5 + '"') else ""} \
      ~{if defined(inputInput10xMtx) then ("--input-10x-mtx " +  '"' + inputInput10xMtx + '"') else ""} \
      ~{true="--output-format" false="" outputOutputFormat} \
      ~{if defined(zarrZarrChunkSize) then ("--zarr-chunk-size " +  '"' + zarrZarrChunkSize + '"') else ""} \
      ~{if defined(exportExportMtx) then ("--export-mtx " +  '"' + exportExportMtx + '"') else ""} \
      ~{true="--show-obj" false="" showShowObj} \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""} \
      ~{true="--var-names" false="" varVarNames} \
      ~{if defined(extraExtraObs) then ("--extra-obs " +  '"' + extraExtraObs + '"') else ""} \
      ~{if defined(extraExtraVar) then ("--extra-var " +  '"' + extraExtraVar + '"') else ""}
  >>>
}