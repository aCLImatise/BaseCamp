version 1.0

task AddGffInfoKegg {
  input {
    String? email
    Boolean? description
    Boolean? pathways
    String? kegg_id
    String? input_file
    String? output_file
  }
  command <<<
    add-gff-info kegg \
      ~{input_file} \
      ~{output_file} \
      ~{if defined(email) then ("--email " +  '"' + email + '"') else ""} \
      ~{true="--description" false="" description} \
      ~{true="--pathways" false="" pathways} \
      ~{if defined(kegg_id) then ("--kegg-id " +  '"' + kegg_id + '"') else ""}
  >>>
  parameter_meta {
    email: "Contact email  [required]"
    description: "Add Kegg description"
    pathways: "Add pathways ID involved"
    kegg_id: "In which attribute the Kegg ID is stored (defaults to *gene_id*)"
    input_file: ""
    output_file: ""
  }
}