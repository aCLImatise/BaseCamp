version 1.0

task AnviGenFixationIndexMatrix {
  input {
    String profileProfileDb
    String contigsContigsDb
    String structureStructureDb
    String variabilityVariabilityProfile
    String collectionCollectionName
    String binBinId
    File splitsSplitsOfInterest
    File genesGenesOfInterest
    String geneGeneCallerIds
    Boolean onlyOnlyIfStructure
    File samplesSamplesOfInterest
    String engineEngine
    String minMinOccurrence
    Int minMinCoverageInEachSample
    String outputOutputFile
    Boolean keepKeepNegatives
  }
  command <<<
    anvi-gen-fixation-index-matrix \
      ~{if defined(profileProfileDb) then ("--profile-db " +  '"' + profileProfileDb + '"') else ""} \
      ~{if defined(contigsContigsDb) then ("--contigs-db " +  '"' + contigsContigsDb + '"') else ""} \
      ~{if defined(structureStructureDb) then ("--structure-db " +  '"' + structureStructureDb + '"') else ""} \
      ~{if defined(variabilityVariabilityProfile) then ("--variability-profile " +  '"' + variabilityVariabilityProfile + '"') else ""} \
      ~{if defined(collectionCollectionName) then ("--collection-name " +  '"' + collectionCollectionName + '"') else ""} \
      ~{if defined(binBinId) then ("--bin-id " +  '"' + binBinId + '"') else ""} \
      ~{if defined(splitsSplitsOfInterest) then ("--splits-of-interest " +  '"' + splitsSplitsOfInterest + '"') else ""} \
      ~{if defined(genesGenesOfInterest) then ("--genes-of-interest " +  '"' + genesGenesOfInterest + '"') else ""} \
      ~{if defined(geneGeneCallerIds) then ("--gene-caller-ids " +  '"' + geneGeneCallerIds + '"') else ""} \
      ~{true="--only-if-structure" false="" onlyOnlyIfStructure} \
      ~{if defined(samplesSamplesOfInterest) then ("--samples-of-interest " +  '"' + samplesSamplesOfInterest + '"') else ""} \
      ~{if defined(engineEngine) then ("--engine " +  '"' + engineEngine + '"') else ""} \
      ~{if defined(minMinOccurrence) then ("--min-occurrence " +  '"' + minMinOccurrence + '"') else ""} \
      ~{if defined(minMinCoverageInEachSample) then ("--min-coverage-in-each-sample " +  '"' + minMinCoverageInEachSample + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""} \
      ~{true="--keep-negatives" false="" keepKeepNegatives}
  >>>
}