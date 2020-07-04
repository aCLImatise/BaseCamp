version 1.0

task MageckMle {
  input {
    String? count_table
    String? design_matrix
    String? day_zero_label
    String? output_prefix
    String? include_samples
    String? beta_labels
    String? control_sg_rna
    String? control_gene
    String? cnv_norm
    String? cnv_est
    Boolean? debug
    String? debug_gene
    String? norm_method
    String? genes_var_modeling
    String? permutation_round
    Boolean? no_permutation_by_group
    Int? max_sg_rna_per_gene_permutation
    Boolean? remove_outliers
    String? threads
    String? adjust_method
    String? sg_rna_efficiency
    String? sg_rna_eff_name_column
    String? sg_rna_eff_score_column
    Boolean? update_efficiency
    Boolean? bayes
    Boolean? ppi_prior
    String? ppi_weighting
    String? negative_control
  }
  command <<<
    mageck mle \
      ~{if defined(count_table) then ("--count-table " +  '"' + count_table + '"') else ""} \
      ~{if defined(design_matrix) then ("--design-matrix " +  '"' + design_matrix + '"') else ""} \
      ~{if defined(day_zero_label) then ("--day0-label " +  '"' + day_zero_label + '"') else ""} \
      ~{if defined(output_prefix) then ("--output-prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(include_samples) then ("--include-samples " +  '"' + include_samples + '"') else ""} \
      ~{if defined(beta_labels) then ("--beta-labels " +  '"' + beta_labels + '"') else ""} \
      ~{if defined(control_sg_rna) then ("--control-sgrna " +  '"' + control_sg_rna + '"') else ""} \
      ~{if defined(control_gene) then ("--control-gene " +  '"' + control_gene + '"') else ""} \
      ~{if defined(cnv_norm) then ("--cnv-norm " +  '"' + cnv_norm + '"') else ""} \
      ~{if defined(cnv_est) then ("--cnv-est " +  '"' + cnv_est + '"') else ""} \
      ~{true="--debug" false="" debug} \
      ~{if defined(debug_gene) then ("--debug-gene " +  '"' + debug_gene + '"') else ""} \
      ~{if defined(norm_method) then ("--norm-method " +  '"' + norm_method + '"') else ""} \
      ~{if defined(genes_var_modeling) then ("--genes-varmodeling " +  '"' + genes_var_modeling + '"') else ""} \
      ~{if defined(permutation_round) then ("--permutation-round " +  '"' + permutation_round + '"') else ""} \
      ~{true="--no-permutation-by-group" false="" no_permutation_by_group} \
      ~{if defined(max_sg_rna_per_gene_permutation) then ("--max-sgrnapergene-permutation " +  '"' + max_sg_rna_per_gene_permutation + '"') else ""} \
      ~{true="--remove-outliers" false="" remove_outliers} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(adjust_method) then ("--adjust-method " +  '"' + adjust_method + '"') else ""} \
      ~{if defined(sg_rna_efficiency) then ("--sgrna-efficiency " +  '"' + sg_rna_efficiency + '"') else ""} \
      ~{if defined(sg_rna_eff_name_column) then ("--sgrna-eff-name-column " +  '"' + sg_rna_eff_name_column + '"') else ""} \
      ~{if defined(sg_rna_eff_score_column) then ("--sgrna-eff-score-column " +  '"' + sg_rna_eff_score_column + '"') else ""} \
      ~{true="--update-efficiency" false="" update_efficiency} \
      ~{true="--bayes" false="" bayes} \
      ~{true="--PPI-prior" false="" ppi_prior} \
      ~{if defined(ppi_weighting) then ("--PPI-weighting " +  '"' + ppi_weighting + '"') else ""} \
      ~{if defined(negative_control) then ("--negative-control " +  '"' + negative_control + '"') else ""}
  >>>
  parameter_meta {
    count_table: "Provide a tab-separated count table. Each line in the table should include sgRNA name (1st column), target gene (2nd column) and read counts in each sample."
    design_matrix: "Provide a design matrix, either a file name or a quoted string of the design matrix. For example, \"1,1;1,0\". The row of the design matrix must match the order of the samples in the count table (if --include- samples is not specified), or the order of the samples by the --include-samples option."
    day_zero_label: "Specify the label for control sample (usually day 0 or plasmid). For every other sample label, the MLE module will treat it as a single condition and generate an corresponding design matrix."
    output_prefix: "The prefix of the output file(s). Default sample1."
    include_samples: "Specify the sample labels if the design matrix is not given by file in the --design-matrix option. Sample labels are separated by \",\", and must match the labels in the count table."
    beta_labels: "Specify the labels of the variables (i.e., beta), if the design matrix is not given by file in the --design-matrix option. Should be separated by \",\", and the number of labels must equal to (# columns of design matrix), including baseline labels. Default value: \"bata_0,beta_1,beta_2,...\"."
    control_sg_rna: "A list of control sgRNAs for normalization and for generating the null distribution of RRA."
    control_gene: "A list of genes whose sgRNAs are used as control sgRNAs for normalization and for generating the null distribution of RRA."
    cnv_norm: "A matrix of copy number variation data across cell lines to normalize CNV-biased sgRNA scores prior to gene ranking."
    cnv_est: "Estimate CNV profiles from screening data. A BED file with gene positions are required as input. The CNVs of these genes are to be estimated and used for copy number bias correction."
    debug: "Debug mode to output detailed information of the running."
    debug_gene: "Debug mode to only run one gene with specified ID."
    norm_method: "Method for normalization, including \"none\" (no normalization), \"median\" (median normalization, default), \"total\" (normalization by total read counts), \"control\" (normalization by control sgRNAs specified by the --control-sgrna option)."
    genes_var_modeling: "The number of genes for mean-variance modeling. Default 0."
    permutation_round: "The rounds for permutation (interger). The permutation time is (# genes)*x for x rounds of permutation. Suggested value: 10 (may take longer time). Default 2."
    no_permutation_by_group: "By default, gene permutation is performed separately, by their number of sgRNAs. Turning this option will perform permutation on all genes together. This makes the program faster, but the p value estimation is accurate only if the number of sgRNAs per gene is approximately the same."
    max_sg_rna_per_gene_permutation: "Do not calculate beta scores or p vales if the number of sgRNAs per gene is greater than this number. This will save a lot of time if some isolated regions are targeted by a large number of sgRNAs (usually hundreds). Must be an integer. Default 100."
    remove_outliers: "Try to remove outliers. Turning this option on will slow the algorithm."
    threads: "Using multiple threads to run the algorithm. Default using only 1 thread."
    adjust_method: "Method for sgrna-level p-value adjustment, including false discovery rate (fdr), holm's method (holm), or pounds's method (pounds)."
    sg_rna_efficiency: "An optional file of sgRNA efficiency prediction. The efficiency prediction will be used as an initial guess of the probability an sgRNA is efficient. Must contain at least two columns, one containing sgRNA ID, the other containing sgRNA efficiency prediction."
    sg_rna_eff_name_column: "The sgRNA ID column in sgRNA efficiency prediction file (specified by the --sgrna-efficiency option). Default is 0 (the first column)."
    sg_rna_eff_score_column: "The sgRNA efficiency prediction column in sgRNA efficiency prediction file (specified by the --sgrna- efficiency option). Default is 1 (the second column)."
    update_efficiency: "Iteratively update sgRNA efficiency during EM iteration."
    bayes: "Use the experimental Bayes module to estimate gene essentiality"
    ppi_prior: "Specify whether you want to incorporate PPI as prior"
    ppi_weighting: "The weighting used to calculate PPI prior. If not provided, iterations will be used."
    negative_control: "The gene name of negative controls. The corresponding sgRNA will be viewed independently."
  }
}