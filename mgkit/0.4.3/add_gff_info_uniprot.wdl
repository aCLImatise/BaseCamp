version 1.0

task AddGffInfoUniprot {
  input {
    String emailEmail
    Int bufferBuffer
    Boolean forceForceTaxOnId
    Boolean taxTaxOnId
    Boolean lineageLineage
    Boolean eggnogEggnog
    Boolean enzymesEnzymes
    Boolean keggKeggOrthologs
    Boolean proteinProteinNames
    String mappingMapping
  }
  command <<<
    add-gff-info uniprot \
      ~{if defined(emailEmail) then ("--email " +  '"' + emailEmail + '"') else ""} \
      ~{if defined(bufferBuffer) then ("--buffer " +  '"' + bufferBuffer + '"') else ""} \
      ~{true="--force-taxon-id" false="" forceForceTaxOnId} \
      ~{true="--taxon-id" false="" taxTaxOnId} \
      ~{true="--lineage" false="" lineageLineage} \
      ~{true="--eggnog" false="" eggnogEggnog} \
      ~{true="--enzymes" false="" enzymesEnzymes} \
      ~{true="--kegg_orthologs" false="" keggKeggOrthologs} \
      ~{true="--protein-names" false="" proteinProteinNames} \
      ~{if defined(mappingMapping) then ("--mapping " +  '"' + mappingMapping + '"') else ""}
  >>>
}