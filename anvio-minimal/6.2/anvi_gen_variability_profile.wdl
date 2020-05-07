version 1.0

task AnviGenVariabilityProfile {
  input {
    String profileProfileDb
    String contigsContigsDb
    String structureStructureDb
    String collectionCollectionName
    String binBinId
    File splitsSplitsOfInterest
    File genesGenesOfInterest
    String geneGeneCallerIds
    Boolean onlyOnlyIfStructure
    File samplesSamplesOfInterest
    String engineEngine
    Boolean skipSkipSynonymIty
    Int numNumPositionsFromEachSplit
    Float minMinDepartureFromReference
    Float maxMaxDepartureFromReference
    Float minMinDepartureFromConsensus
    Float maxMaxDepartureFromConsensus
    String minMinOccurrence
    Int minMinCoverageInEachSample
    Boolean quinceQuinceMode
    String outputOutputFile
    Boolean includeIncludeContigNames
    Boolean includeIncludeSplitNames
    Boolean computeComputeGeneCoverageStats
  }
  command <<<
    anvi-gen-variability-profile \
      ~{if defined(profileProfileDb) then ("--profile-db " +  '"' + profileProfileDb + '"') else ""} \
      ~{if defined(contigsContigsDb) then ("--contigs-db " +  '"' + contigsContigsDb + '"') else ""} \
      ~{if defined(structureStructureDb) then ("--structure-db " +  '"' + structureStructureDb + '"') else ""} \
      ~{if defined(collectionCollectionName) then ("--collection-name " +  '"' + collectionCollectionName + '"') else ""} \
      ~{if defined(binBinId) then ("--bin-id " +  '"' + binBinId + '"') else ""} \
      ~{if defined(splitsSplitsOfInterest) then ("--splits-of-interest " +  '"' + splitsSplitsOfInterest + '"') else ""} \
      ~{if defined(genesGenesOfInterest) then ("--genes-of-interest " +  '"' + genesGenesOfInterest + '"') else ""} \
      ~{if defined(geneGeneCallerIds) then ("--gene-caller-ids " +  '"' + geneGeneCallerIds + '"') else ""} \
      ~{true="--only-if-structure" false="" onlyOnlyIfStructure} \
      ~{if defined(samplesSamplesOfInterest) then ("--samples-of-interest " +  '"' + samplesSamplesOfInterest + '"') else ""} \
      ~{if defined(engineEngine) then ("--engine " +  '"' + engineEngine + '"') else ""} \
      ~{true="--skip-synonymity" false="" skipSkipSynonymIty} \
      ~{if defined(numNumPositionsFromEachSplit) then ("--num-positions-from-each-split " +  '"' + numNumPositionsFromEachSplit + '"') else ""} \
      ~{if defined(minMinDepartureFromReference) then ("--min-departure-from-reference " +  '"' + minMinDepartureFromReference + '"') else ""} \
      ~{if defined(maxMaxDepartureFromReference) then ("--max-departure-from-reference " +  '"' + maxMaxDepartureFromReference + '"') else ""} \
      ~{if defined(minMinDepartureFromConsensus) then ("--min-departure-from-consensus " +  '"' + minMinDepartureFromConsensus + '"') else ""} \
      ~{if defined(maxMaxDepartureFromConsensus) then ("--max-departure-from-consensus " +  '"' + maxMaxDepartureFromConsensus + '"') else ""} \
      ~{if defined(minMinOccurrence) then ("--min-occurrence " +  '"' + minMinOccurrence + '"') else ""} \
      ~{if defined(minMinCoverageInEachSample) then ("--min-coverage-in-each-sample " +  '"' + minMinCoverageInEachSample + '"') else ""} \
      ~{true="--quince-mode" false="" quinceQuinceMode} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""} \
      ~{true="--include-contig-names" false="" includeIncludeContigNames} \
      ~{true="--include-split-names" false="" includeIncludeSplitNames} \
      ~{true="--compute-gene-coverage-stats" false="" computeComputeGeneCoverageStats}
  >>>
}