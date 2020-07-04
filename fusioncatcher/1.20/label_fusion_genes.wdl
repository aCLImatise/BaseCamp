version 1.0

task LabelFusionGenes.py {
  input {
    String? input_file_text
    String? filter_gene_pairs
    String? filter_gene_pairs_threshold
    String? filter_genes
    String? label
    String? output_fusion_genes
    Boolean? similar_gene_symbols
    String? min_dist_gene_gene
    String? min_dist_gene_gene_database
  }
  command <<<
    label_fusion_genes.py \
      ~{if defined(input_file_text) then ("--input " +  '"' + input_file_text + '"') else ""} \
      ~{if defined(filter_gene_pairs) then ("--filter_gene_pairs " +  '"' + filter_gene_pairs + '"') else ""} \
      ~{if defined(filter_gene_pairs_threshold) then ("--filter_gene_pairs_threshold " +  '"' + filter_gene_pairs_threshold + '"') else ""} \
      ~{if defined(filter_genes) then ("--filter_genes " +  '"' + filter_genes + '"') else ""} \
      ~{if defined(label) then ("--label " +  '"' + label + '"') else ""} \
      ~{if defined(output_fusion_genes) then ("--output_fusion_genes " +  '"' + output_fusion_genes + '"') else ""} \
      ~{true="--similar_gene_symbols" false="" similar_gene_symbols} \
      ~{if defined(min_dist_gene_gene) then ("--min_dist_gene_gene " +  '"' + min_dist_gene_gene + '"') else ""} \
      ~{if defined(min_dist_gene_gene_database) then ("--min_dist_gene_gene_database " +  '"' + min_dist_gene_gene_database + '"') else ""}
  >>>
  parameter_meta {
    input_file_text: "The input file in text tab delimited format containing the fusion genes candidates produced by 'find_fusion_genes.py'."
    filter_gene_pairs: "The input text file tab separated format containing gene pairs which are used as filter for labeling (two columns and no header; the order of genes in the gene pairs is ignored)."
    filter_gene_pairs_threshold: "The threshold which will be used to filter the gene fusions from '--filter_gene_pairs' only if there is a third column. The threshold will applied to the third column. Default is '0'."
    filter_genes: "The input text file format containing genes which are used as filter for labeling."
    label: "Label used to mark the candidate fusion genes which are founf in the filter."
    output_fusion_genes: "The output text tab-separated file containing the candidate fusion genes which are found in the filter. The format is as the input file and sorted by counts column."
    similar_gene_symbols: "It labels the pairs of genes which have similar gene HUGO symbols (i.e. the symbol name is the same except the last character). Default is False."
    min_dist_gene_gene: "It labels the pairs of genes where the distance between the genes is below a given threshold (for example 100000 bp)."
    min_dist_gene_gene_database: "Database with exons position on chromosomes which is used to extract the gene positions, e.g. 'more_exons_ensembl.txt'. This is needed only when '-- min_distance_gene_gene' is used."
  }
}