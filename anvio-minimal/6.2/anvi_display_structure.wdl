version 1.0

task AnviDisplayStructure {
  input {
    String structureStructureDb
    String profileProfileDb
    String contigsContigsDb
    String variabilityVariabilityProfile
    File splitsSplitsOfInterest
    String collectionCollectionName
    String binBinId
    File samplesSamplesOfInterest
    File genesGenesOfInterest
    String geneGeneCallerIds
    Float minMinDepartureFromConsensus
    Boolean saSaAvsOnly
    Boolean sSCvsOnly
    String ipIpAddress
    Int portPortNumber
    File browserBrowserPath
    Boolean serverServerOnly
    Boolean passwordPasswordProtected
  }
  command <<<
    anvi-display-structure \
      ~{if defined(structureStructureDb) then ("--structure-db " +  '"' + structureStructureDb + '"') else ""} \
      ~{if defined(profileProfileDb) then ("--profile-db " +  '"' + profileProfileDb + '"') else ""} \
      ~{if defined(contigsContigsDb) then ("--contigs-db " +  '"' + contigsContigsDb + '"') else ""} \
      ~{if defined(variabilityVariabilityProfile) then ("--variability-profile " +  '"' + variabilityVariabilityProfile + '"') else ""} \
      ~{if defined(splitsSplitsOfInterest) then ("--splits-of-interest " +  '"' + splitsSplitsOfInterest + '"') else ""} \
      ~{if defined(collectionCollectionName) then ("--collection-name " +  '"' + collectionCollectionName + '"') else ""} \
      ~{if defined(binBinId) then ("--bin-id " +  '"' + binBinId + '"') else ""} \
      ~{if defined(samplesSamplesOfInterest) then ("--samples-of-interest " +  '"' + samplesSamplesOfInterest + '"') else ""} \
      ~{if defined(genesGenesOfInterest) then ("--genes-of-interest " +  '"' + genesGenesOfInterest + '"') else ""} \
      ~{if defined(geneGeneCallerIds) then ("--gene-caller-ids " +  '"' + geneGeneCallerIds + '"') else ""} \
      ~{if defined(minMinDepartureFromConsensus) then ("--min-departure-from-consensus " +  '"' + minMinDepartureFromConsensus + '"') else ""} \
      ~{true="--SAAVs-only" false="" saSaAvsOnly} \
      ~{true="--SCVs-only" false="" sSCvsOnly} \
      ~{if defined(ipIpAddress) then ("--ip-address " +  '"' + ipIpAddress + '"') else ""} \
      ~{if defined(portPortNumber) then ("--port-number " +  '"' + portPortNumber + '"') else ""} \
      ~{if defined(browserBrowserPath) then ("--browser-path " +  '"' + browserBrowserPath + '"') else ""} \
      ~{true="--server-only" false="" serverServerOnly} \
      ~{true="--password-protected" false="" passwordPasswordProtected}
  >>>
}