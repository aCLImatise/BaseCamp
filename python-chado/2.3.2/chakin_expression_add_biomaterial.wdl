version 1.0

task ChakinExpressionAddBiomaterial {
  input {
    String descriptionDescription
    String biomaterialBiomaterialProvider
    String bioBioSampleAccession
    String sraSraAccession
    String bioBioProjectAccession
    String attributesAttributes
  }
  command <<<
    chakin expression add_biomaterial \
      ~{if defined(descriptionDescription) then ("--description " +  '"' + descriptionDescription + '"') else ""} \
      ~{if defined(biomaterialBiomaterialProvider) then ("--biomaterial_provider " +  '"' + biomaterialBiomaterialProvider + '"') else ""} \
      ~{if defined(bioBioSampleAccession) then ("--biosample_accession " +  '"' + bioBioSampleAccession + '"') else ""} \
      ~{if defined(sraSraAccession) then ("--sra_accession " +  '"' + sraSraAccession + '"') else ""} \
      ~{if defined(bioBioProjectAccession) then ("--bioproject_accession " +  '"' + bioBioProjectAccession + '"') else ""} \
      ~{if defined(attributesAttributes) then ("--attributes " +  '"' + attributesAttributes + '"') else ""}
  >>>
}