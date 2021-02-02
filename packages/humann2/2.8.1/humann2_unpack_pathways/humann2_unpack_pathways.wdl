version 1.0

task Humann2UnpackPathways {
  input {
    File? input_genes
    File? input_pathways
    File? gene_mapping
    File? pathway_mapping
    File? remove_taxonomy
    String? the_table_write
    String unpack_pathway_abundances
  }
  command <<<
    humann2_unpack_pathways \
      ~{unpack_pathway_abundances} \
      ~{if defined(input_genes) then ("--input-genes " +  '"' + input_genes + '"') else ""} \
      ~{if defined(input_pathways) then ("--input-pathways " +  '"' + input_pathways + '"') else ""} \
      ~{if defined(gene_mapping) then ("--gene-mapping " +  '"' + gene_mapping + '"') else ""} \
      ~{if defined(pathway_mapping) then ("--pathway-mapping " +  '"' + pathway_mapping + '"') else ""} \
      ~{if (remove_taxonomy) then "--remove-taxonomy" else ""} \
      ~{if defined(the_table_write) then ("--output " +  '"' + the_table_write + '"') else ""}
  >>>
  parameter_meta {
    input_genes: "the gene family or EC abundance file"
    input_pathways: "the pathway abundance file"
    gene_mapping: "gene family to reaction mapping file"
    pathway_mapping: "reaction to pathway mapping file"
    remove_taxonomy: "remove the taxonomy from the output file"
    the_table_write: "the table to write\\n"
    unpack_pathway_abundances: "Unpack pathway abundances to show genes included"
  }
  output {
    File out_stdout = stdout()
    File out_remove_taxonomy = "${in_remove_taxonomy}"
  }
}