version 1.0

task MageckPathway {
  input {
    File? gene_ranking
    File? gmt_file
    File? output_prefix
    String? method
    Boolean? single_ranking
    String? sort_criteria
    Boolean? keep_tmp
    Int? ranking_column
    Int? ranking_column_two
    Float? pathway_alpha
    Int? permutation
  }
  command <<<
    mageck pathway \
      ~{if defined(gene_ranking) then ("--gene-ranking " +  '"' + gene_ranking + '"') else ""} \
      ~{if defined(gmt_file) then ("--gmt-file " +  '"' + gmt_file + '"') else ""} \
      ~{if defined(output_prefix) then ("--output-prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if (single_ranking) then "--single-ranking" else ""} \
      ~{if defined(sort_criteria) then ("--sort-criteria " +  '"' + sort_criteria + '"') else ""} \
      ~{if (keep_tmp) then "--keep-tmp" else ""} \
      ~{if defined(ranking_column) then ("--ranking-column " +  '"' + ranking_column + '"') else ""} \
      ~{if defined(ranking_column_two) then ("--ranking-column-2 " +  '"' + ranking_column_two + '"') else ""} \
      ~{if defined(pathway_alpha) then ("--pathway-alpha " +  '"' + pathway_alpha + '"') else ""} \
      ~{if defined(permutation) then ("--permutation " +  '"' + permutation + '"') else ""}
  >>>
  parameter_meta {
    gene_ranking: "The gene summary file (containing both positive and\\nnegative selection tests) generated by the gene test\\nstep. Pathway enrichment will be performed in both\\ndirections."
    gmt_file: "The pathway file in GMT format."
    output_prefix: "The prefix of the output file(s). Default sample1."
    method: "Method for testing pathway enrichment, including gsea\\n(Gene Set Enrichment Analysis) or rra. Default gsea."
    single_ranking: "The provided file is a (single) gene ranking file,\\neither positive or negative selection. Only one\\nenrichment comparison will be performed."
    sort_criteria: "Sorting criteria, either by negative selection (neg)\\nor positive selection (pos). Default negative\\nselection."
    keep_tmp: "Keep intermediate files."
    ranking_column: "Column number or label in gene summary file for gene\\nranking; can be either an integer of column number, or\\na string of column label. Default \\\"2\\\" (the 3rd\\ncolumn), the column of the negative selection RRA\\nscore in gene_summary file."
    ranking_column_two: "Column number or label in gene summary file for gene\\nranking; can be either an integer of column number, or\\na string of column label. This option is used to\\ndetermine the column for positive selections and is\\ndisabled if --single-ranking is specified. Default \\\"8\\\"\\n(the 9th column), the column of positive selection RRA\\nscore in gene_summary file."
    pathway_alpha: "The default alpha value for RRA pathway enrichment.\\nDefault 0.25."
    permutation: "The perumtation for gsea. Default 1000.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_prefix = "${in_output_prefix}"
  }
}