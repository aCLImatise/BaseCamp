version 1.0

task MicroRazers {
  input {
    File outputOutput
    String recognitionRecognitionRate
    String seedSeedLength
    Boolean seedSeedError
    Boolean forwardForward
    Boolean reverseReverse
    Boolean matchMatchN
    String maxMaxHits
    Boolean purgePurgeAmbiguous
    Boolean lowLowMemory
    Boolean verboseVerbose
    Boolean vVVerbose
    Boolean alignmentAlignment
    String genomeGenomeNaming
    String readReadNaming
    String sortSortOrder
    String positionPositionFormat
  }
  command <<<
    micro_razers \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(recognitionRecognitionRate) then ("--recognition-rate " +  '"' + recognitionRecognitionRate + '"') else ""} \
      ~{if defined(seedSeedLength) then ("--seed-length " +  '"' + seedSeedLength + '"') else ""} \
      ~{true="--seed-error" false="" seedSeedError} \
      ~{true="--forward" false="" forwardForward} \
      ~{true="--reverse" false="" reverseReverse} \
      ~{true="--match-N" false="" matchMatchN} \
      ~{if defined(maxMaxHits) then ("--max-hits " +  '"' + maxMaxHits + '"') else ""} \
      ~{true="--purge-ambiguous" false="" purgePurgeAmbiguous} \
      ~{true="--low-memory" false="" lowLowMemory} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--vverbose" false="" vVVerbose} \
      ~{true="--alignment" false="" alignmentAlignment} \
      ~{if defined(genomeGenomeNaming) then ("--genome-naming " +  '"' + genomeGenomeNaming + '"') else ""} \
      ~{if defined(readReadNaming) then ("--read-naming " +  '"' + readReadNaming + '"') else ""} \
      ~{if defined(sortSortOrder) then ("--sort-order " +  '"' + sortSortOrder + '"') else ""} \
      ~{if defined(positionPositionFormat) then ("--position-format " +  '"' + positionPositionFormat + '"') else ""}
  >>>
}