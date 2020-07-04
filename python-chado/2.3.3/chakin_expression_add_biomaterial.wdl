version 1.0

task ChakinExpressionAddBiomaterial {
  input {
    String? description
    String? biomaterial_provider
    String? bio_sample_accession
    String? sra_accession
    String? bio_project_accession
    String? attributes
    String biomaterial_name
  }
  command <<<
    chakin expression add_biomaterial \
      ~{biomaterial_name} \
      ~{if defined(description) then ("--description " +  '"' + description + '"') else ""} \
      ~{if defined(biomaterial_provider) then ("--biomaterial_provider " +  '"' + biomaterial_provider + '"') else ""} \
      ~{if defined(bio_sample_accession) then ("--biosample_accession " +  '"' + bio_sample_accession + '"') else ""} \
      ~{if defined(sra_accession) then ("--sra_accession " +  '"' + sra_accession + '"') else ""} \
      ~{if defined(bio_project_accession) then ("--bioproject_accession " +  '"' + bio_project_accession + '"') else ""} \
      ~{if defined(attributes) then ("--attributes " +  '"' + attributes + '"') else ""}
  >>>
  parameter_meta {
    description: "Description of the biomaterial"
    biomaterial_provider: "Biomaterial provider name"
    bio_sample_accession: "Biosample accession number"
    sra_accession: "SRA accession number"
    bio_project_accession: "Bioproject accession number"
    attributes: "Custom attributes (In JSON dict form)"
    biomaterial_name: ""
  }
}