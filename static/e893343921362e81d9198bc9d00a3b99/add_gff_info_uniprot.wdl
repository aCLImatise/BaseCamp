version 1.0

task AddGffInfoUniprot {
  input {
    String? email
    Int? buffer
    Boolean? force_tax_on_id
    Boolean? tax_on_id
    Boolean? lineage
    Boolean? eggnog
    Boolean? enzymes
    Boolean? kegg_orthologs
    Boolean? protein_names
    String? mapping
    String? input_file
    String? output_file
  }
  command <<<
    add-gff-info uniprot \
      ~{input_file} \
      ~{output_file} \
      ~{if defined(email) then ("--email " +  '"' + email + '"') else ""} \
      ~{if defined(buffer) then ("--buffer " +  '"' + buffer + '"') else ""} \
      ~{true="--force-taxon-id" false="" force_tax_on_id} \
      ~{true="--taxon-id" false="" tax_on_id} \
      ~{true="--lineage" false="" lineage} \
      ~{true="--eggnog" false="" eggnog} \
      ~{true="--enzymes" false="" enzymes} \
      ~{true="--kegg_orthologs" false="" kegg_orthologs} \
      ~{true="--protein-names" false="" protein_names} \
      ~{if defined(mapping) then ("--mapping " +  '"' + mapping + '"') else ""}
  >>>
  parameter_meta {
    email: "Contact email  [required]"
    buffer: "Number of annotations to keep in memory  [default: 50]"
    force_tax_on_id: "Overwrite taxon_id if already present"
    tax_on_id: "Add taxonomic ids to annotations, if taxon_id is found, it won't be Overwritten."
    lineage: "Add taxonomic lineage to annotations"
    eggnog: "Add eggNOG mappings to annotations"
    enzymes: "Add EC mappings to annotations"
    kegg_orthologs: "Add KO mappings to annotations"
    protein_names: "Add Uniprot description"
    mapping: "Add any DB mappings to annotations"
    input_file: ""
    output_file: ""
  }
}