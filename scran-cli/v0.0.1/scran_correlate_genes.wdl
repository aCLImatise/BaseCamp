version 1.0

task ScranCorrelateGenes.R {
  input {
    String? input_corr_pairs
    String? output_corr_genes
  }
  command <<<
    scran-correlate-genes.R \
      ~{if defined(input_corr_pairs) then ("--input-corr-pairs " +  '"' + input_corr_pairs + '"') else ""} \
      ~{if defined(output_corr_genes) then ("--output-corr-genes " +  '"' + output_corr_genes + '"') else ""}
  >>>
  parameter_meta {
    input_corr_pairs: "Path to the  DataFrame of pairwise correlation statistics, returned by correlatePairs."
    output_corr_genes: "A DataFrame with one row per unique gene in stats and containing the fields: gene, rho, p.value, FDR, limited."
  }
}