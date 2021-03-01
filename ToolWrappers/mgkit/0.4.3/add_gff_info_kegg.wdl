version 1.0

task AddgffinfoKegg {
  input {
    String? verbose
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
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if (description) then "--description" else ""} \
      ~{if (pathways) then "--pathways" else ""} \
      ~{if defined(kegg_id) then ("--kegg-id " +  '"' + kegg_id + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "Contact email  [required]"
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