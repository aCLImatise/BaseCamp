version 1.0

task AddgffinfoKegg {
  input {
    Boolean? verbose
    String? email
    Boolean? description
    Boolean? pathways
    String? kegg_id
    String? input_file
    String? output_file
  }
  command <<<
    add_gff_info kegg \
      ~{input_file} \
      ~{output_file} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(email) then ("--email " +  '"' + email + '"') else ""} \
      ~{if (description) then "--description" else ""} \
      ~{if (pathways) then "--pathways" else ""} \
      ~{if defined(kegg_id) then ("--kegg-id " +  '"' + kegg_id + '"') else ""}
  >>>
  parameter_meta {
    verbose: ""
    email: "Contact email  [required]"
    description: "Add Kegg description"
    pathways: "Add pathways ID involved"
    kegg_id: "In which attribute the Kegg ID is stored (defaults to\\n*gene_id*)"
    input_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}