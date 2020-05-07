version 1.0

task ChadoInsertOrganism {
  input {
    Boolean verboseVerbose
    String configConfig
    Boolean useUsePassword
    String genusGenus
    String speciesSpecies
    String infraspecificInfraspecificName
    String abbreviationAbbreviation
    String commonCommonName
    String commentComment
    String genomeGenomeVersion
    String taxTaxOnId
    String wikidataWikidataId
    String? dbnameDbname
  }
  command <<<
    chado insert organism \
      ~{dbnameDbname} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{true="--use_password" false="" useUsePassword} \
      ~{if defined(genusGenus) then ("--genus " +  '"' + genusGenus + '"') else ""} \
      ~{if defined(speciesSpecies) then ("--species " +  '"' + speciesSpecies + '"') else ""} \
      ~{if defined(infraspecificInfraspecificName) then ("--infraspecific_name " +  '"' + infraspecificInfraspecificName + '"') else ""} \
      ~{if defined(abbreviationAbbreviation) then ("--abbreviation " +  '"' + abbreviationAbbreviation + '"') else ""} \
      ~{if defined(commonCommonName) then ("--common_name " +  '"' + commonCommonName + '"') else ""} \
      ~{if defined(commentComment) then ("--comment " +  '"' + commentComment + '"') else ""} \
      ~{if defined(genomeGenomeVersion) then ("--genome_version " +  '"' + genomeGenomeVersion + '"') else ""} \
      ~{if defined(taxTaxOnId) then ("--taxon_id " +  '"' + taxTaxOnId + '"') else ""} \
      ~{if defined(wikidataWikidataId) then ("--wikidata_id " +  '"' + wikidataWikidataId + '"') else ""}
  >>>
}