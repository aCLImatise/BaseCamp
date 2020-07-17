version 1.0

task ExtractFusionGenes.py {
  input {
    String? fusion_genes_candidates
    String? input_fusion_reads
    String? threshold_pairs
    String? threshold_pairs_known
    String? threshold_count
    String? skip_labels
    String? allowed_labels
    String? further_labels
    String? text_tab_separated
    String? output_fusion
    String? output_fusion_reads
  }
  command <<<
    extract_fusion_genes.py \
      ~{if defined(fusion_genes_candidates) then ("--input " +  '"' + fusion_genes_candidates + '"') else ""} \
      ~{if defined(input_fusion_reads) then ("--input_fusion_reads " +  '"' + input_fusion_reads + '"') else ""} \
      ~{if defined(threshold_pairs) then ("--threshold_pairs " +  '"' + threshold_pairs + '"') else ""} \
      ~{if defined(threshold_pairs_known) then ("--threshold_pairs_known " +  '"' + threshold_pairs_known + '"') else ""} \
      ~{if defined(threshold_count) then ("--threshold_count " +  '"' + threshold_count + '"') else ""} \
      ~{if defined(skip_labels) then ("--skip_labels " +  '"' + skip_labels + '"') else ""} \
      ~{if defined(allowed_labels) then ("--allowed_labels " +  '"' + allowed_labels + '"') else ""} \
      ~{if defined(further_labels) then ("--further_labels " +  '"' + further_labels + '"') else ""} \
      ~{if defined(text_tab_separated) then ("--output " +  '"' + text_tab_separated + '"') else ""} \
      ~{if defined(output_fusion) then ("--output_fusion " +  '"' + output_fusion + '"') else ""} \
      ~{if defined(output_fusion_reads) then ("--output_fusion_reads " +  '"' + output_fusion_reads + '"') else ""}
  >>>
  parameter_meta {
    fusion_genes_candidates: "The input file in text tab delimited format containing the fusion genes candidates produced by 'label_fusion_genes.py'."
    input_fusion_reads: "The input file in text tab delimited format containing the fusion genes and supporting reads produced by find_fusion_genes_map.py."
    threshold_pairs: "The threshold for the number of paired-end reads necessary for considering the fusion gene candidate for further analysis. All gene fusions candidate with a larger and equal number of supporting paired-end reads are written in the output file. Default value is 3."
    threshold_pairs_known: "The threshold for the number of paired-end reads necessary for considering the fusion gene candidate, which was labeled using '--allowed_labels', for further analysis. All gene fusions candidate with a larger and equal number of supporting paired-end reads are written in the output file. Default value is 0."
    threshold_count: "If --threshold_pairs selects more fusions than this threshold than this threshold will have priority (only the first top N will be selected). Default value is 5000."
    skip_labels: "A fusion gene candidate which has been labeled in the input file with one of the following labels is skipped and not written in the output file. Default value is 'paralog'."
    allowed_labels: "A fusion gene candidate which has been labeled in the input file with one of the following labels is considered for further analysis even if it has labels which disqualify it (from the --skipp_labels). Default value is 'known'."
    further_labels: "A fusion gene candidate which has been labeled in the input file with one of the following labels is considered for further analysis even if it has labels which disqualify it (from the --skipp_labels) or is below the threshold. Default value is 'further_fusion'."
    text_tab_separated: "The text tab separated file containing the fusion genes candidates which meet the conditions imposed by options '--threshold' and '--skip_labels' are written."
    output_fusion: "The same file as the input file where and extra column is added for the genes which have been selected for further analysis."
    output_fusion_reads: "The file containing the supporting reads which supports the gene considered for further analysis."
  }
}