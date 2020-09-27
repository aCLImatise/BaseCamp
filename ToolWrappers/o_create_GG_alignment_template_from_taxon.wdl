version 1.0

task OcreateGGalignmenttemplatefromtaxon {
  input {
    File? path_output_folder
    String create_greengenes_alignment
    String tax_on
    String otu_id_to_green_genes
    String path_greengenes_alignment
  }
  command <<<
    o_create_GG_alignment_template_from_taxon \
      ~{create_greengenes_alignment} \
      ~{tax_on} \
      ~{otu_id_to_green_genes} \
      ~{path_greengenes_alignment} \
      ~{if defined(path_output_folder) then ("--output " +  '"' + path_output_folder + '"') else ""}
  >>>
  parameter_meta {
    path_output_folder: "Path to the output folder\\n"
    create_greengenes_alignment: "Create GreenGenes Alignment Template"
    tax_on: "\\\"Taxon\\\" name to be searched in GreenGenes"
    otu_id_to_green_genes: "Path to the \\\"otu_id_to_greengenes\\\" file. You can\\ndownload it from \\\"http://greengenes.lbl.gov/Download/O\\nTUs/gg_otus_6oct2010/taxonomies/otu_id_to_greengenes.t\\nxt\\\""
    path_greengenes_alignment: "Path to the GreenGenes alignment file. You can\\ndownload it from \\\"http://greengenes.lbl.gov/Download/O\\nTUs/gg_otus_6oct2010/rep_set/gg_97_otus_6oct2010_align\\ned.fasta\\\""
  }
  output {
    File out_stdout = stdout()
    File out_path_output_folder = "${in_path_output_folder}"
  }
}