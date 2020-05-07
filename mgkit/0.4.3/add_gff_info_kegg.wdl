version 1.0

task AddGffInfoKegg {
  input {
    String emailEmail
    Boolean descriptionDescription
    Boolean pathwaysPathways
    String keggKeggId
  }
  command <<<
    add-gff-info kegg \
      ~{if defined(emailEmail) then ("--email " +  '"' + emailEmail + '"') else ""} \
      ~{true="--description" false="" descriptionDescription} \
      ~{true="--pathways" false="" pathwaysPathways} \
      ~{if defined(keggKeggId) then ("--kegg-id " +  '"' + keggKeggId + '"') else ""}
  >>>
}