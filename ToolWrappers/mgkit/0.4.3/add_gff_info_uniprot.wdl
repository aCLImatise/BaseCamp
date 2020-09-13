version 1.0

task AddgffinfoUniprot {
  input {
    Boolean? verbose
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
    add_gff_info uniprot \
      ~{input_file} \
      ~{output_file} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(email) then ("--email " +  '"' + email + '"') else ""} \
      ~{if defined(buffer) then ("--buffer " +  '"' + buffer + '"') else ""} \
      ~{if (force_tax_on_id) then "--force-taxon-id" else ""} \
      ~{if (tax_on_id) then "--taxon-id" else ""} \
      ~{if (lineage) then "--lineage" else ""} \
      ~{if (eggnog) then "--eggnog" else ""} \
      ~{if (enzymes) then "--enzymes" else ""} \
      ~{if (kegg_orthologs) then "--kegg_orthologs" else ""} \
      ~{if (protein_names) then "--protein-names" else ""} \
      ~{if defined(mapping) then ("--mapping " +  '"' + mapping + '"') else ""}
  >>>
  parameter_meta {
    verbose: ""
    email: "Contact email  [required]"
    buffer: "Number of annotations to keep in memory  [default:\\n50]"
    force_tax_on_id: "Overwrite taxon_id if already present"
    tax_on_id: "Add taxonomic ids to annotations, if taxon_id is\\nfound, it won't be Overwritten."
    lineage: "Add taxonomic lineage to annotations"
    eggnog: "Add eggNOG mappings to annotations"
    enzymes: "Add EC mappings to annotations"
    kegg_orthologs: "Add KO mappings to annotations"
    protein_names: "Add Uniprot description"
    mapping: "Add any DB mappings to annotations"
    input_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}