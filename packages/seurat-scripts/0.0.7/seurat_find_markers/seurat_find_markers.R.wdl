version 1.0

task SeuratfindmarkersR {
  input {
    File? input_object_file
    File? genes_use
    String? input_format
    Float? log_fc_threshold
    Int? min_pct
    Int? min_diff_pct
    String? only_pos
    Int? test_use
    Int? max_cells_per_ident
    Int? min_cells_gene
    Int? min_cells_group
    File? output_text_file
  }
  command <<<
    seurat_find_markers_R \
      ~{if defined(input_object_file) then ("--input-object-file " +  '"' + input_object_file + '"') else ""} \
      ~{if defined(genes_use) then ("--genes-use " +  '"' + genes_use + '"') else ""} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{if defined(log_fc_threshold) then ("--logfc-threshold " +  '"' + log_fc_threshold + '"') else ""} \
      ~{if defined(min_pct) then ("--min-pct " +  '"' + min_pct + '"') else ""} \
      ~{if defined(min_diff_pct) then ("--min-diff-pct " +  '"' + min_diff_pct + '"') else ""} \
      ~{if defined(only_pos) then ("--only-pos " +  '"' + only_pos + '"') else ""} \
      ~{if defined(test_use) then ("--test-use " +  '"' + test_use + '"') else ""} \
      ~{if defined(max_cells_per_ident) then ("--max-cells-per-ident " +  '"' + max_cells_per_ident + '"') else ""} \
      ~{if defined(min_cells_gene) then ("--min-cells-gene " +  '"' + min_cells_gene + '"') else ""} \
      ~{if defined(min_cells_group) then ("--min-cells-group " +  '"' + min_cells_group + '"') else ""} \
      ~{if defined(output_text_file) then ("--output-text-file " +  '"' + output_text_file + '"') else ""}
  >>>
  parameter_meta {
    input_object_file: "File name in which a serialized R matrix object may be found."
    genes_use: "File to be used to derive a vector of genes to test. Default is to use all genes."
    input_format: "Either loom, seurat, anndata or singlecellexperiment for the input format to read."
    log_fc_threshold: "Limit testing to genes which show, on average, at least X-fold difference (log-scale) between the two groups of cells. Default is 0.25 Increasing logfc.threshold speeds up the function, but can miss weaker signals."
    min_pct: "Only test genes that are detected in a minimum fraction of min.pct cells in either of the two populations. Meant to speed up the function by not testing genes that are very infrequently expressed. Default is 0.1."
    min_diff_pct: "Only test genes that show a minimum difference in the fraction of detection between the two groups. Set to -Inf by default."
    only_pos: "Only return positive markers (FALSE by default)."
    test_use: "Denotes which test to use. Available options are 'wilcox', 'bimod', 'roc', 't', 'tobit', 'poisson', 'negbinom', 'MAST', 'DESeq2'. See ?FindMarkers() for more info."
    max_cells_per_ident: "Down sample each identity class to a max number. Default is no downsampling. Not activated by default (set to Inf)."
    min_cells_gene: "Minimum number of cells expressing the gene in at least one of the two groups, currently only used for poisson and negative binomial tests."
    min_cells_group: "Minimum number of cells in one of the groups."
    output_text_file: "File name in which to store text format matrix containing a ranked list of putative markers, and associated statistics (p-values, ROC score, etc.)."
  }
  output {
    File out_stdout = stdout()
    File out_output_text_file = "${in_output_text_file}"
  }
}