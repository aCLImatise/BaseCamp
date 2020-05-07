version 1.0

task TripailleExpressionGetBiomaterials {
  input {
    String biomaterialBiomaterialName
    String providerProviderId
    String biomaterialBiomaterialId
    String organismOrganismId
    String dbxrefDbxrefId
  }
  command <<<
    tripaille expression get_biomaterials \
      ~{if defined(biomaterialBiomaterialName) then ("--biomaterial_name " +  '"' + biomaterialBiomaterialName + '"') else ""} \
      ~{if defined(providerProviderId) then ("--provider_id " +  '"' + providerProviderId + '"') else ""} \
      ~{if defined(biomaterialBiomaterialId) then ("--biomaterial_id " +  '"' + biomaterialBiomaterialId + '"') else ""} \
      ~{if defined(organismOrganismId) then ("--organism_id " +  '"' + organismOrganismId + '"') else ""} \
      ~{if defined(dbxrefDbxrefId) then ("--dbxref_id " +  '"' + dbxrefDbxrefId + '"') else ""}
  >>>
}