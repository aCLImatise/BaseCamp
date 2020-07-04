version 1.0

task LabelFusionGenesTrim2.py {
  input {
    String? input_file_text
    String? fusions_pairs
    String? smaller_pairs
    String? output_fusion_genes
  }
  command <<<
    label_fusion_genes_trim2.py \
      ~{if defined(input_file_text) then ("--input " +  '"' + input_file_text + '"') else ""} \
      ~{if defined(fusions_pairs) then ("--fusions_pairs " +  '"' + fusions_pairs + '"') else ""} \
      ~{if defined(smaller_pairs) then ("--smaller_pairs " +  '"' + smaller_pairs + '"') else ""} \
      ~{if defined(output_fusion_genes) then ("--output_fusion_genes " +  '"' + output_fusion_genes + '"') else ""}
  >>>
  parameter_meta {
    input_file_text: "The input file in text tab delimited format containing the fusion genes candidates produced by 'find_fusion_genes.py'."
    fusions_pairs: "The input text file tab separated format containing gene pairs which are used as filter for labeling (two columns and no header; the order of genes in the gene pairs is ignored)."
    smaller_pairs: "The input text file tab separated format containing gene pairs which are used as filter for labeling (two columns and no header; the order of genes in the gene pairs is ignored)."
    output_fusion_genes: "The output text tab-separated file containing the candidate fusion genes which are found in the filter. The format is as the input file and sorted by counts column."
  }
}