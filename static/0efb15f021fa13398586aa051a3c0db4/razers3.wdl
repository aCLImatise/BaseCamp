version 1.0

task Razers3 {
  input {
    String percentPercentIdentity
    String recognitionRecognitionRate
    Boolean noNoGaps
    Boolean forwardForward
    Boolean reverseReverse
    String maxMaxHits
    Boolean uniqueUnique
    String trimTrimReads
    File outputOutput
    Boolean verboseVerbose
    Boolean vVVerbose
    String libraryLibraryLength
    String libraryLibraryError
    Boolean alignmentAlignment
    Boolean purgePurgeAmbiguous
    String distanceDistanceRange
    String genomeGenomeNaming
    String readReadNaming
    Boolean fullFullReadId
    String sortSortOrder
    String positionPositionFormat
    Boolean dontDontShrinkAlignments
    String filterFilter
    String mutationMutationRate
    String overlapOverlapLength
    String paramParamDir
    String thresholdThreshold
    String tabooTabooLength
    String shapeShape
    String overabundanceOverabundanceCut
    String repeatRepeatLength
    String loadLoadFactor
    Boolean matchMatchN
    File errorErrorDistr
    File mismatchMismatchFile
    String compactCompactMult
    String noNoCompactFrac
    String threadThreadCount
    String parallelParallelWindowSize
    String parallelParallelVerificationSize
    String parallelParallelVerificationMaxPackageCount
    String availableAvailableMatchesMemorySize
    String matchMatchHistoStartThreshold
  }
  command <<<
    razers3 \
      ~{if defined(percentPercentIdentity) then ("--percent-identity " +  '"' + percentPercentIdentity + '"') else ""} \
      ~{if defined(recognitionRecognitionRate) then ("--recognition-rate " +  '"' + recognitionRecognitionRate + '"') else ""} \
      ~{true="--no-gaps" false="" noNoGaps} \
      ~{true="--forward" false="" forwardForward} \
      ~{true="--reverse" false="" reverseReverse} \
      ~{if defined(maxMaxHits) then ("--max-hits " +  '"' + maxMaxHits + '"') else ""} \
      ~{true="--unique" false="" uniqueUnique} \
      ~{if defined(trimTrimReads) then ("--trim-reads " +  '"' + trimTrimReads + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--vverbose" false="" vVVerbose} \
      ~{if defined(libraryLibraryLength) then ("--library-length " +  '"' + libraryLibraryLength + '"') else ""} \
      ~{if defined(libraryLibraryError) then ("--library-error " +  '"' + libraryLibraryError + '"') else ""} \
      ~{true="--alignment" false="" alignmentAlignment} \
      ~{true="--purge-ambiguous" false="" purgePurgeAmbiguous} \
      ~{if defined(distanceDistanceRange) then ("--distance-range " +  '"' + distanceDistanceRange + '"') else ""} \
      ~{if defined(genomeGenomeNaming) then ("--genome-naming " +  '"' + genomeGenomeNaming + '"') else ""} \
      ~{if defined(readReadNaming) then ("--read-naming " +  '"' + readReadNaming + '"') else ""} \
      ~{true="--full-readid" false="" fullFullReadId} \
      ~{if defined(sortSortOrder) then ("--sort-order " +  '"' + sortSortOrder + '"') else ""} \
      ~{if defined(positionPositionFormat) then ("--position-format " +  '"' + positionPositionFormat + '"') else ""} \
      ~{true="--dont-shrink-alignments" false="" dontDontShrinkAlignments} \
      ~{if defined(filterFilter) then ("--filter " +  '"' + filterFilter + '"') else ""} \
      ~{if defined(mutationMutationRate) then ("--mutation-rate " +  '"' + mutationMutationRate + '"') else ""} \
      ~{if defined(overlapOverlapLength) then ("--overlap-length " +  '"' + overlapOverlapLength + '"') else ""} \
      ~{if defined(paramParamDir) then ("--param-dir " +  '"' + paramParamDir + '"') else ""} \
      ~{if defined(thresholdThreshold) then ("--threshold " +  '"' + thresholdThreshold + '"') else ""} \
      ~{if defined(tabooTabooLength) then ("--taboo-length " +  '"' + tabooTabooLength + '"') else ""} \
      ~{if defined(shapeShape) then ("--shape " +  '"' + shapeShape + '"') else ""} \
      ~{if defined(overabundanceOverabundanceCut) then ("--overabundance-cut " +  '"' + overabundanceOverabundanceCut + '"') else ""} \
      ~{if defined(repeatRepeatLength) then ("--repeat-length " +  '"' + repeatRepeatLength + '"') else ""} \
      ~{if defined(loadLoadFactor) then ("--load-factor " +  '"' + loadLoadFactor + '"') else ""} \
      ~{true="--match-N" false="" matchMatchN} \
      ~{if defined(errorErrorDistr) then ("--error-distr " +  '"' + errorErrorDistr + '"') else ""} \
      ~{if defined(mismatchMismatchFile) then ("--mismatch-file " +  '"' + mismatchMismatchFile + '"') else ""} \
      ~{if defined(compactCompactMult) then ("--compact-mult " +  '"' + compactCompactMult + '"') else ""} \
      ~{if defined(noNoCompactFrac) then ("--no-compact-frac " +  '"' + noNoCompactFrac + '"') else ""} \
      ~{if defined(threadThreadCount) then ("--thread-count " +  '"' + threadThreadCount + '"') else ""} \
      ~{if defined(parallelParallelWindowSize) then ("--parallel-window-size " +  '"' + parallelParallelWindowSize + '"') else ""} \
      ~{if defined(parallelParallelVerificationSize) then ("--parallel-verification-size " +  '"' + parallelParallelVerificationSize + '"') else ""} \
      ~{if defined(parallelParallelVerificationMaxPackageCount) then ("--parallel-verification-max-package-count " +  '"' + parallelParallelVerificationMaxPackageCount + '"') else ""} \
      ~{if defined(availableAvailableMatchesMemorySize) then ("--available-matches-memory-size " +  '"' + availableAvailableMatchesMemorySize + '"') else ""} \
      ~{if defined(matchMatchHistoStartThreshold) then ("--match-histo-start-threshold " +  '"' + matchMatchHistoStartThreshold + '"') else ""}
  >>>
}