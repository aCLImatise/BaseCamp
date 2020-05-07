version 1.0

task Gcpp {
  input {
    Boolean referenceReference
    Boolean outputOutput
    Boolean minMinConfidence
    Boolean minMinCoverage
    Boolean noNoEvidenceCall
    Boolean coverageCoverage
    Boolean minMinAccuracy
    Boolean minMinMapQv
    Boolean minMinReadScore
    Boolean minMinSnr
    Boolean windowsWindows
    Boolean algorithmAlgorithm
    Boolean maskMaskRadius
    Boolean maskMaskErrorRate
    Boolean parametersParametersFile
    Boolean parametersParametersSpec
    Boolean maxMaxIterations
    Boolean maxMaxPoaCoverage
    Boolean mutationMutationSeparation
    Boolean mutationMutationNeighborhood
    Boolean readReadStumpInessThreshold
    Boolean referenceReferenceChunkSize
    Boolean referenceReferenceChunkOverlap
    Boolean simpleSimpleChunking
    Boolean sortSortStrategy
    Boolean minMinPoaCoverage
    Boolean numNumThreads
    Boolean logLogLevel
    Boolean logLogFile
    String? inputInputBam
  }
  command <<<
    gcpp \
      ~{inputInputBam} \
      ~{true="--reference" false="" referenceReference} \
      ~{true="--output" false="" outputOutput} \
      ~{true="--min-confidence" false="" minMinConfidence} \
      ~{true="--min-coverage" false="" minMinCoverage} \
      ~{true="--no-evidence-call" false="" noNoEvidenceCall} \
      ~{true="--coverage" false="" coverageCoverage} \
      ~{true="--min-accuracy" false="" minMinAccuracy} \
      ~{true="--min-map-qv" false="" minMinMapQv} \
      ~{true="--min-read-score" false="" minMinReadScore} \
      ~{true="--min-snr" false="" minMinSnr} \
      ~{true="--windows" false="" windowsWindows} \
      ~{true="--algorithm" false="" algorithmAlgorithm} \
      ~{true="--mask-radius" false="" maskMaskRadius} \
      ~{true="--mask-error-rate" false="" maskMaskErrorRate} \
      ~{true="--parameters-file" false="" parametersParametersFile} \
      ~{true="--parameters-spec" false="" parametersParametersSpec} \
      ~{true="--max-iterations" false="" maxMaxIterations} \
      ~{true="--max-poa-coverage" false="" maxMaxPoaCoverage} \
      ~{true="--mutation-separation" false="" mutationMutationSeparation} \
      ~{true="--mutation-neighborhood" false="" mutationMutationNeighborhood} \
      ~{true="--read-stumpiness-threshold" false="" readReadStumpInessThreshold} \
      ~{true="--reference-chunk-size" false="" referenceReferenceChunkSize} \
      ~{true="--reference-chunk-overlap" false="" referenceReferenceChunkOverlap} \
      ~{true="--simple-chunking" false="" simpleSimpleChunking} \
      ~{true="--sort-strategy" false="" sortSortStrategy} \
      ~{true="--min-poa-coverage" false="" minMinPoaCoverage} \
      ~{true="--num-threads" false="" numNumThreads} \
      ~{true="--log-level" false="" logLogLevel} \
      ~{true="--log-file" false="" logLogFile}
  >>>
}