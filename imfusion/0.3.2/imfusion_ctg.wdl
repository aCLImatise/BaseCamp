version 1.0

task ImfusionCtg {
  input {
    String? insertions
    String? reference
    Array[String] gene_ids
    String? path_output_ctg
    String? threshold
    String? pattern
    String? window
    Array[String] chromosomes
    Int? min_depth
    String? expression
    String? de_threshold
  }
  command <<<
    imfusion-ctg \
      ~{if defined(insertions) then ("--insertions " +  '"' + insertions + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(gene_ids) then ("--gene_ids " +  '"' + gene_ids + '"') else ""} \
      ~{if defined(path_output_ctg) then ("--output " +  '"' + path_output_ctg + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(pattern) then ("--pattern " +  '"' + pattern + '"') else ""} \
      ~{if defined(window) then ("--window " +  '"' + window + '"') else ""} \
      ~{if defined(chromosomes) then ("--chromosomes " +  '"' + chromosomes + '"') else ""} \
      ~{if defined(min_depth) then ("--min_depth " +  '"' + min_depth + '"') else ""} \
      ~{if defined(expression) then ("--expression " +  '"' + expression + '"') else ""} \
      ~{if defined(de_threshold) then ("--de_threshold " +  '"' + de_threshold + '"') else ""}
  >>>
  parameter_meta {
    insertions: "Path to the merged insertions file from imfusion- merge."
    reference: "Path to the reference genome sequence (in fasta format). Can either be the augmented reference genome or the original reference."
    gene_ids: "IDs of genes to test."
    path_output_ctg: "Path for the output CTG file."
    threshold: "Minimum corrected p-value for CTGs. (Default = 0.01)."
    pattern: "Regular expression reflecting the nucleotide sequence at which the use transposon typically integrates (if any). Used to correct for sequence integration biases along the genome. For example the pattern (AT|TA) is used for the T2onc2 transposon, which is biased towards integrations as TA sites."
    window: "WINDOW Window around the gene within which we test a given gene for enrichment in insertions."
    chromosomes: "Chromosomes to consider. Used to omit specific chromosomes from the CTG analysis."
    min_depth: "Minimum supporting number of reads for insertions to be included in the CTG analysis. Can be used to omit insertions with low support for more confidence in the analysis."
    expression: "Path to the merged expression file from imfusion- merge."
    de_threshold: "Minimum p-value for a CTG to be considered as differentially expressed."
  }
}