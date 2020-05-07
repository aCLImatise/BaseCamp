version 1.0

task ScanpyCliEmbedUmap {
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
    Float minMinDist
    Float spreadSpread
    Int nNComponents
    Int maxiterMaxiter
    Float alphaAlpha
    Float gammaGamma
    Int negativeNegativeSampleRate
  }
  command <<<
    scanpy-cli embed umap \
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
      ~{if defined(minMinDist) then ("--min-dist " +  '"' + minMinDist + '"') else ""} \
      ~{if defined(spreadSpread) then ("--spread " +  '"' + spreadSpread + '"') else ""} \
      ~{if defined(nNComponents) then ("--n-components " +  '"' + nNComponents + '"') else ""} \
      ~{if defined(maxiterMaxiter) then ("--maxiter " +  '"' + maxiterMaxiter + '"') else ""} \
      ~{if defined(alphaAlpha) then ("--alpha " +  '"' + alphaAlpha + '"') else ""} \
      ~{if defined(gammaGamma) then ("--gamma " +  '"' + gammaGamma + '"') else ""} \
      ~{if defined(negativeNegativeSampleRate) then ("--negative-sample-rate " +  '"' + negativeNegativeSampleRate + '"') else ""}
  >>>
}