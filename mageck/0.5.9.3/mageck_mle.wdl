version 1.0

task MageckMle {
  input {
    Int? count_table
    File? design_matrix
    Int? day_zero_label
    File? output_prefix
    File? include_samples
    Int? beta_labels
    String? control_sg_rna
    String? control_gene
    Int? cnv_norm
    Int? cnv_est
    Boolean? debug
    String? norm_method
    Int? genes_var_modeling
    Int? permutation_round
    Boolean? no_permutation_by_group
    Int? max_sg_rna_per_gene_permutation
    Boolean? remove_outliers
    Int? threads
    String? adjust_method
    File? sg_rna_efficiency
    File? sg_rna_eff_name_column
    File? sg_rna_eff_score_column
    Boolean? update_efficiency
    Boolean? bayes
    String? ppi_weighting
    String? negative_control
    String running_dot
    String iteration_dot
    String essentiality
  }
  command <<<
    mageck mle \
      ~{running_dot} \
      ~{iteration_dot} \
      ~{essentiality} \
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
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(norm_method) then ("--norm-method " +  '"' + norm_method + '"') else ""} \
      ~{if defined(genes_var_modeling) then ("--genes-varmodeling " +  '"' + genes_var_modeling + '"') else ""} \
      ~{if defined(permutation_round) then ("--permutation-round " +  '"' + permutation_round + '"') else ""} \
      ~{if (no_permutation_by_group) then "--no-permutation-by-group" else ""} \
      ~{if defined(max_sg_rna_per_gene_permutation) then ("--max-sgrnapergene-permutation " +  '"' + max_sg_rna_per_gene_permutation + '"') else ""} \
      ~{if (remove_outliers) then "--remove-outliers" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(adjust_method) then ("--adjust-method " +  '"' + adjust_method + '"') else ""} \
      ~{if defined(sg_rna_efficiency) then ("--sgrna-efficiency " +  '"' + sg_rna_efficiency + '"') else ""} \
      ~{if defined(sg_rna_eff_name_column) then ("--sgrna-eff-name-column " +  '"' + sg_rna_eff_name_column + '"') else ""} \
      ~{if defined(sg_rna_eff_score_column) then ("--sgrna-eff-score-column " +  '"' + sg_rna_eff_score_column + '"') else ""} \
      ~{if (update_efficiency) then "--update-efficiency" else ""} \
      ~{if (bayes) then "--bayes" else ""} \
      ~{if defined(ppi_weighting) then ("--PPI-weighting " +  '"' + ppi_weighting + '"') else ""} \
      ~{if defined(negative_control) then ("--negative-control " +  '"' + negative_control + '"') else ""}
  >>>
  parameter_meta {
    count_table: "Provide a tab-separated count table. Each line in the\\ntable should include sgRNA name (1st column), target\\ngene (2nd column) and read counts in each sample."
    design_matrix: "Provide a design matrix, either a file name or a\\nquoted string of the design matrix. For example,\\n\\\"1,1;1,0\\\". The row of the design matrix must match the\\norder of the samples in the count table (if --include-\\nsamples is not specified), or the order of the samples\\nby the --include-samples option."
    day_zero_label: "Specify the label for control sample (usually day 0 or\\nplasmid). For every other sample label, the MLE module\\nwill treat it as a single condition and generate an\\ncorresponding design matrix."
    output_prefix: "The prefix of the output file(s). Default sample1."
    include_samples: "Specify the sample labels if the design matrix is not\\ngiven by file in the --design-matrix option. Sample\\nlabels are separated by \\\",\\\", and must match the labels\\nin the count table."
    beta_labels: "Specify the labels of the variables (i.e., beta), if\\nthe design matrix is not given by file in the\\n--design-matrix option. Should be separated by \\\",\\\",\\nand the number of labels must equal to (# columns of\\ndesign matrix), including baseline labels. Default\\nvalue: \\\"bata_0,beta_1,beta_2,...\\\"."
    control_sg_rna: "A list of control sgRNAs for normalization and for\\ngenerating the null distribution of RRA."
    control_gene: "A list of genes whose sgRNAs are used as control\\nsgRNAs for normalization and for generating the null\\ndistribution of RRA."
    cnv_norm: "A matrix of copy number variation data across cell\\nlines to normalize CNV-biased sgRNA scores prior to\\ngene ranking."
    cnv_est: "Estimate CNV profiles from screening data. A BED file\\nwith gene positions are required as input. The CNVs of\\nthese genes are to be estimated and used for copy\\nnumber bias correction."
    debug: "Debug mode to output detailed information of the"
    norm_method: "Method for normalization, including \\\"none\\\" (no\\nnormalization), \\\"median\\\" (median normalization,\\ndefault), \\\"total\\\" (normalization by total read\\ncounts), \\\"control\\\" (normalization by control sgRNAs\\nspecified by the --control-sgrna option)."
    genes_var_modeling: "The number of genes for mean-variance modeling.\\nDefault 0."
    permutation_round: "The rounds for permutation (interger). The permutation\\ntime is (# genes)*x for x rounds of permutation.\\nSuggested value: 10 (may take longer time). Default 2."
    no_permutation_by_group: "By default, gene permutation is performed separately,\\nby their number of sgRNAs. Turning this option will\\nperform permutation on all genes together. This makes\\nthe program faster, but the p value estimation is\\naccurate only if the number of sgRNAs per gene is\\napproximately the same."
    max_sg_rna_per_gene_permutation: "Do not calculate beta scores or p vales if the number\\nof sgRNAs per gene is greater than this number. This\\nwill save a lot of time if some isolated regions are\\ntargeted by a large number of sgRNAs (usually\\nhundreds). Must be an integer. Default 100."
    remove_outliers: "Try to remove outliers. Turning this option on will\\nslow the algorithm."
    threads: "Using multiple threads to run the algorithm. Default\\nusing only 1 thread."
    adjust_method: "Method for sgrna-level p-value adjustment, including\\nfalse discovery rate (fdr), holm's method (holm), or\\npounds's method (pounds)."
    sg_rna_efficiency: "An optional file of sgRNA efficiency prediction. The\\nefficiency prediction will be used as an initial guess\\nof the probability an sgRNA is efficient. Must contain\\nat least two columns, one containing sgRNA ID, the\\nother containing sgRNA efficiency prediction."
    sg_rna_eff_name_column: "The sgRNA ID column in sgRNA efficiency prediction\\nfile (specified by the --sgrna-efficiency option).\\nDefault is 0 (the first column)."
    sg_rna_eff_score_column: "The sgRNA efficiency prediction column in sgRNA\\nefficiency prediction file (specified by the --sgrna-\\nefficiency option). Default is 1 (the second column)."
    update_efficiency: "Iteratively update sgRNA efficiency during EM"
    bayes: "Use the experimental Bayes module to estimate gene"
    ppi_weighting: "The weighting used to calculate PPI prior. If not\\nprovided, iterations will be used."
    negative_control: "The gene name of negative controls. The corresponding\\nsgRNA will be viewed independently.\\n"
    running_dot: "--debug-gene DEBUG_GENE"
    iteration_dot: "Optional arguments for the Bayes estimation of gene essentiality (experimental):"
    essentiality: "-p, --PPI-prior       Specify whether you want to incorporate PPI as prior"
  }
  output {
    File out_stdout = stdout()
    File out_output_prefix = "${in_output_prefix}"
  }
}