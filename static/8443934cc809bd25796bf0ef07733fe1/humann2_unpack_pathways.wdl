version 1.0

task Humann2UnpackPathways {
  input {
    String? input_genes
    String? input_pathways
    String? gene_mapping
    File? pathway_mapping
    Boolean? remove_taxonomy
    String? the_table_write
  }
  command <<<
    humann2_unpack_pathways \
      ~{if defined(input_genes) then ("--input-genes " +  '"' + input_genes + '"') else ""} \
      ~{if defined(input_pathways) then ("--input-pathways " +  '"' + input_pathways + '"') else ""} \
      ~{if defined(gene_mapping) then ("--gene-mapping " +  '"' + gene_mapping + '"') else ""} \
      ~{if defined(pathway_mapping) then ("--pathway-mapping " +  '"' + pathway_mapping + '"') else ""} \
      ~{true="--remove-taxonomy" false="" remove_taxonomy} \
      ~{if defined(the_table_write) then ("--output " +  '"' + the_table_write + '"') else ""}
  >>>
  parameter_meta {
    input_genes: "the gene family or EC abundance file"
    input_pathways: "the pathway abundance file"
    gene_mapping: "gene family to reaction mapping file"
    pathway_mapping: "reaction to pathway mapping file"
    remove_taxonomy: "remove the taxonomy from the output file"
    the_table_write: "the table to write"
  }
}