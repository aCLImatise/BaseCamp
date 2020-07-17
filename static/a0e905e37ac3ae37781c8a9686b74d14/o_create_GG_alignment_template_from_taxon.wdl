version 1.0

task OCreateGGAlignmentTemplateFromTaxon {
  input {
    String? path_output_folder
    String tax_on
    String otu_id_to_green_genes
    String green_genes_alignment
  }
  command <<<
    o-create-GG-alignment-template-from-taxon \
      ~{tax_on} \
      ~{otu_id_to_green_genes} \
      ~{green_genes_alignment} \
      ~{if defined(path_output_folder) then ("--output " +  '"' + path_output_folder + '"') else ""}
  >>>
  parameter_meta {
    path_output_folder: "Path to the output folder"
    tax_on: "\"Taxon\" name to be searched in GreenGenes"
    otu_id_to_green_genes: "Path to the \"otu_id_to_greengenes\" file. You can download it from \"http://greengenes.lbl.gov/Download/O TUs/gg_otus_6oct2010/taxonomies/otu_id_to_greengenes.t xt\""
    green_genes_alignment: "Path to the GreenGenes alignment file. You can download it from \"http://greengenes.lbl.gov/Download/O TUs/gg_otus_6oct2010/rep_set/gg_97_otus_6oct2010_align ed.fasta\""
  }
}