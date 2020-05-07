version 1.0

task ScanpyCliEmbedTsne {
  input {
    Boolean inputInputFormat
    Boolean outputOutputFormat
    Int zarrZarrChunkSize
    File exportExportMtx
    Boolean showShowObj
    Int nNPcs
    String useUseRep
    Int randomRandomState
    String keyKeyAdded
    Int nNJobs
    File exportExportEmbedding
    Float perplexityPerplexity
    Float earlyEarlyExaggeration
    Float learningLearningRate
    Boolean noNoFastTsnE
  }
  command <<<
    scanpy-cli embed tsne \
      ~{true="--input-format" false="" inputInputFormat} \
      ~{true="--output-format" false="" outputOutputFormat} \
      ~{if defined(zarrZarrChunkSize) then ("--zarr-chunk-size " +  '"' + zarrZarrChunkSize + '"') else ""} \
      ~{if defined(exportExportMtx) then ("--export-mtx " +  '"' + exportExportMtx + '"') else ""} \
      ~{true="--show-obj" false="" showShowObj} \
      ~{if defined(nNPcs) then ("--n-pcs " +  '"' + nNPcs + '"') else ""} \
      ~{if defined(useUseRep) then ("--use-rep " +  '"' + useUseRep + '"') else ""} \
      ~{if defined(randomRandomState) then ("--random-state " +  '"' + randomRandomState + '"') else ""} \
      ~{if defined(keyKeyAdded) then ("--key-added " +  '"' + keyKeyAdded + '"') else ""} \
      ~{if defined(nNJobs) then ("--n-jobs " +  '"' + nNJobs + '"') else ""} \
      ~{if defined(exportExportEmbedding) then ("--export-embedding " +  '"' + exportExportEmbedding + '"') else ""} \
      ~{if defined(perplexityPerplexity) then ("--perplexity " +  '"' + perplexityPerplexity + '"') else ""} \
      ~{if defined(earlyEarlyExaggeration) then ("--early-exaggeration " +  '"' + earlyEarlyExaggeration + '"') else ""} \
      ~{if defined(learningLearningRate) then ("--learning-rate " +  '"' + learningLearningRate + '"') else ""} \
      ~{true="--no-fast-tsne" false="" noNoFastTsnE}
  >>>
}