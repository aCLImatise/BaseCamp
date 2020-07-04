version 1.0

task MageckTest {
  input {
    String? count_table
    String? treatment_id
    String? day_zero_label
    String? control_id
    Boolean? paired
    String? norm_method
    String? gene_test_fdr_threshold
    String? adjust_method
    String? variance_estimation_samples
    String? sort_criteria
    String? remove_zero
    String? remove_zero_threshold
    Boolean? pdf_report
    String? gene_lfc_method
    String? output_prefix
    String? control_sg_rna
    String? control_gene
    Boolean? norm_counts_to_file
    String? skip_gene
    Boolean? keep_tmp
    String? additional_rra_parameters
    String? cnv_norm
    String? cell_line
    String? cnv_est
  }
  command <<<
    mageck test \
      ~{if defined(count_table) then ("--count-table " +  '"' + count_table + '"') else ""} \
      ~{if defined(treatment_id) then ("--treatment-id " +  '"' + treatment_id + '"') else ""} \
      ~{if defined(day_zero_label) then ("--day0-label " +  '"' + day_zero_label + '"') else ""} \
      ~{if defined(control_id) then ("--control-id " +  '"' + control_id + '"') else ""} \
      ~{true="--paired" false="" paired} \
      ~{if defined(norm_method) then ("--norm-method " +  '"' + norm_method + '"') else ""} \
      ~{if defined(gene_test_fdr_threshold) then ("--gene-test-fdr-threshold " +  '"' + gene_test_fdr_threshold + '"') else ""} \
      ~{if defined(adjust_method) then ("--adjust-method " +  '"' + adjust_method + '"') else ""} \
      ~{if defined(variance_estimation_samples) then ("--variance-estimation-samples " +  '"' + variance_estimation_samples + '"') else ""} \
      ~{if defined(sort_criteria) then ("--sort-criteria " +  '"' + sort_criteria + '"') else ""} \
      ~{if defined(remove_zero) then ("--remove-zero " +  '"' + remove_zero + '"') else ""} \
      ~{if defined(remove_zero_threshold) then ("--remove-zero-threshold " +  '"' + remove_zero_threshold + '"') else ""} \
      ~{true="--pdf-report" false="" pdf_report} \
      ~{if defined(gene_lfc_method) then ("--gene-lfc-method " +  '"' + gene_lfc_method + '"') else ""} \
      ~{if defined(output_prefix) then ("--output-prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(control_sg_rna) then ("--control-sgrna " +  '"' + control_sg_rna + '"') else ""} \
      ~{if defined(control_gene) then ("--control-gene " +  '"' + control_gene + '"') else ""} \
      ~{true="--normcounts-to-file" false="" norm_counts_to_file} \
      ~{if defined(skip_gene) then ("--skip-gene " +  '"' + skip_gene + '"') else ""} \
      ~{true="--keep-tmp" false="" keep_tmp} \
      ~{if defined(additional_rra_parameters) then ("--additional-rra-parameters " +  '"' + additional_rra_parameters + '"') else ""} \
      ~{if defined(cnv_norm) then ("--cnv-norm " +  '"' + cnv_norm + '"') else ""} \
      ~{if defined(cell_line) then ("--cell-line " +  '"' + cell_line + '"') else ""} \
      ~{if defined(cnv_est) then ("--cnv-est " +  '"' + cnv_est + '"') else ""}
  >>>
  parameter_meta {
    count_table: "Provide a tab-separated count table instead of sam files. Each line in the table should include sgRNA name (1st column), gene name (2nd column) and read counts in each sample."
    treatment_id: "Sample label or sample index (0 as the first sample) in the count table as treatment experiments, separated by comma (,). If sample label is provided, the labels must match the labels in the first line of the count table; for example, \"HL60.final,KBM7.final\". For sample index, \"0,2\" means the 1st and 3rd samples are treatment experiments."
    day_zero_label: "Specify the label for control sample (usually day 0 or plasmid). For every other sample label, the module will treat it as a treatment condition and compare with control sample."
    control_id: "Sample label or sample index in the count table as control experiments, separated by comma (,). Default is all the samples not specified in treatment experiments."
    paired: "Paired sample comparisons. In this mode, the number of samples in -t and -c must match and have an exactly the same order in terms of samples. For example, \"-t treatment_r1,treatment_r2 -c control_r1,control_r2\"."
    norm_method: "Method for normalization, including \"none\" (no normalization), \"median\" (median normalization, default), \"total\" (normalization by total read counts), \"control\" (normalization by control sgRNAs specified by the --control-sgrna option)."
    gene_test_fdr_threshold: "p value threshold to determine the alpha value of RRA in gene test (-p option in RRA), default 0.25."
    adjust_method: "Method for sgrna-level p-value adjustment, including false discovery rate (fdr), holm's method (holm), or pounds's method (pounds)."
    variance_estimation_samples: "Sample label or sample index for estimating variances, separated by comma (,). See -t/--treatment-id option for specifying samples."
    sort_criteria: "Sorting criteria, either by negative selection (neg) or positive selection (pos). Default negative selection."
    remove_zero: "Remove sgRNAs whose mean value is zero in control, treatment, both control/treatment, or any control/treatment sample. Default: both (remove those sgRNAs that are zero in both control and treatment samples)."
    remove_zero_threshold: "sgRNA normalized count threshold to be considered removed in the --remove-zero option. Default 0."
    pdf_report: "Generate pdf report of the analysis."
    gene_lfc_method: "Method to calculate gene log fold changes (LFC) from sgRNA LFCs. Available methods include the median/mean of all sgRNAs (median/mean), or the median/mean sgRNAs that are ranked in front of the alpha cutoff in RRA (alphamedian/alphamean), or the sgRNA that has the second strongest LFC (secondbest). In the alphamedian/alphamean case, the number of sgRNAs correspond to the \"goodsgrna\" column in the output, and the gene LFC will be set to 0 if no sgRNA is in front of the alpha cutoff. Default median."
    output_prefix: "The prefix of the output file(s). Default sample1."
    control_sg_rna: "A list of control sgRNAs for normalization and for generating the null distribution of RRA."
    control_gene: "A list of genes whose sgRNAs are used as control sgRNAs for normalization and for generating the null distribution of RRA."
    norm_counts_to_file: "Write normalized read counts to file ([output- prefix].normalized.txt)."
    skip_gene: "Skip genes in the report. By default, \"NA\" or \"na\" will be skipped."
    keep_tmp: "Keep intermediate files."
    additional_rra_parameters: "Additional arguments to run RRA. They will be appended to the command line for calling RRA."
    cnv_norm: "A matrix of copy number variation data across cell lines to normalize CNV-biased sgRNA scores prior to gene ranking."
    cell_line: "The name of the cell line to be used for copy number variation normalization."
    cnv_est: "Estimate CNV profiles from screening data. A BED file with gene positions are required as input. The CNVs of these genes are to be estimated and used for copy number bias correction."
  }
}